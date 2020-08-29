if __name__ == '__main__':
    print(' *** BMI ***')
    weight, height = map(float, input('Enter your weight(kg) and height(m) : ').split())

    bmi = weight / (height ** 2)
    ans = 'Below normal weight' if bmi < 18.5 else 'Normal weight' if bmi < 25 else 'Overweight' \
    if bmi < 30 else 'Case I Obesity' if bmi < 35 else 'Case II Obesity' if bmi < 40 else 'Case III Obesity'
    print('Your status is :', ans, end = '.')
