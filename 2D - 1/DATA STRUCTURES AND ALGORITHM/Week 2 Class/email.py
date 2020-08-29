class Email:

    def __init__(self):
        self.firstname = ''
        self.lastname = ''

    @property
    def fullname(self):
        if self._firstname == '' and self._lastname == '':
            return 'Please Enter Your Firstname & Lastname'
        elif self._firstname == '':
            return 'Please Enter Your Firstname'
        elif self._lastname == '':
            return 'Please Enter Your Lastname'
        return f'{self._firstname.capitalize()} {self._lastname.capitalize()}'

    @property
    def email(self):
        if self._firstname == '' and self._lastname == '':
            return 'Please Enter Your Firstname & Lastname'
        elif self._firstname == '':
            return 'Please Enter Your Firstname'
        elif self._lastname == '':
            return 'Please Enter Your Lastname'
        return f'{self._firstname.lower()}.{self._lastname.lower()}@kmitl.ac.th'

    @property
    def firstname(self):
        if self._firstname == "":
            return 'Please Enter Your Firstname'
        return self._firstname.capitalize()

    @firstname.setter
    def firstname(self, firstname):
        if firstname != "":
            self._firstname = firstname.capitalize()
        else:
            self._firstname = ""

    @property
    def lastname(self):
        if self._lastname == "":
            return 'Please Enter Your Lastname'
        return self._lastname.capitalize()

    @lastname.setter
    def lastname(self, lastname):
        if lastname != "":
            self._lastname = lastname.capitalize()
        else:
            self._lastname = ""            

def main():
    mail = Email()
    print('*** Create Email < BY KMITL > ***')
    lst = input('Enter Input : ').split(',')
    # print(lst)
    for line in lst:
        splitted = line.split()
        cmd_type = splitted[0]
        length = len(splitted)
        if length == 1 and cmd_type == 'E':
            print(f"'{cmd_type}' -> Email : {mail.email}")
        elif length == 3 and cmd_type == 'A':
            mail._firstname = splitted[1]
            mail._lastname = splitted[2]
        elif length == 2 and cmd_type == 'F':
            mail._firstname = splitted[1]
        elif length == 2 and cmd_type == 'L':
            mail._lastname = splitted[1]
        elif length == 1 and cmd_type == 'SA':
            print(f"'{cmd_type}' -> Fullname : {mail.fullname}")
        elif length == 1 and cmd_type == 'SF':
            print(f"'{cmd_type}' -> Firstname : {mail.firstname}")
        elif length == 1 and cmd_type == 'SL':
            print(f"'{cmd_type}' -> Lastname : {mail.lastname}")
        elif length == 1 and cmd_type == 'X':
            break
        else:
            print(f"'{line}' is Invalid Input !!!")
            break

if __name__ == '__main__':
    main()