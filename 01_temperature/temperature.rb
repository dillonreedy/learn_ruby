#write your code here
def ftoc(temperature_farenheit)
    return ((temperature_farenheit-32) * (5.0 / 9.0))
end

def ctof(temperature_celsius)
    return (temperature_celsius * (9.0 / 5.0)) + 32
end