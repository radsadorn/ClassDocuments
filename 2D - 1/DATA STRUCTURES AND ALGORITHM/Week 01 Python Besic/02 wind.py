print(" *** Wind classification *** ")
speed = float(input("Enter wind speed (km/h) : "))

wind = 'Breeze' if speed < 52 else 'Depression' if speed < 56 else 'Tropical Storm' if speed < 102 else 'Typhoon' if speed < 209 else 'Super Typhoon'
print(f"Wind classification is {wind}.")