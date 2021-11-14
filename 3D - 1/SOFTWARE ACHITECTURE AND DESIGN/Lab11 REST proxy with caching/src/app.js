const express = require('express')
const NodeCache = require('node-cache')
const axios = require('axios')

const app = express()
const cache = new NodeCache({ stdTTL: 120 });

const verifyCache = (req, res, next) => {
    try {
        console.log(cache.keys())
        // for(const c of cache.keys()) {
        //     console.log(cache.getTtl(c))
        // }

        const { zone, city } = req.query;
        const timezone = (zone === undefined ? '' : zone) + '/' + (city === undefined ? '' : city)
        if (cache.has(timezone)) {
            return res.status(200).json(cache.get(timezone));
        }

        return next();
    } catch (err) {
        throw new Error(err);
    }
};


app.get('/', (req, res) => {
    res.send('<h1>REST PROXY WITH CACHING</h1>')
})

// '/'✅ 'Asia/'✅ 'Asia/Bangkok'✅ '/Bangkok'❌
app.get('/api/timezone', verifyCache, (req, res) => {
    const { zone, city } = req.query
    const timezone = (zone === undefined ? '' : zone) + '/' + (city === undefined ? '' : city)

    axios.get('http://worldtimeapi.org/api/timezone/' + timezone)
        .then(({ data }) => {
            cache.set(timezone, data)
            res.status(200).json(data)
        })
        .catch( ({ response }) => {
            res.sendStatus( response.status )
        })
})

app.delete('/api/timezone', (req, res) => {
    const { zone, city } = req.query
    const timezone = (zone === undefined ? '' : zone) + '/' + (city === undefined ? '' : city)

    if (cache.has(timezone)) 
        try {
            cache.del(timezone)
            // console.log(cache.keys())
            return res.sendStatus(200)
        }
        catch (error) {
            return res.sendStatus(error.status)
        }

    return res.status(404).end()
})

app.all('*', (req, res) => {
    res.status(404).send('<h1>PAGE NOT FOUND!</h1>')
})

app.listen(5000, () => {
    console.log('Server listening on port 5000...')
})