use context essentials2021
include shared-gdrive(
"dcic-2021",
"1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")

include gdrive-sheets
include data-source
ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"
kWh-wealthy-consumer-data =
  load-table: komponent, energi 
source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
    sanitize energi using string-sanitizer 
  end
fun energi-to-number(str :: String) -> Number:
# skriv koden her (tips: bruk cases og string-to-number funksjonen)
  #casesfun set-angle(str :: String) -> Number:
  doc: "If s is not a numeric string, default to 0."
  cases(Option) string-to-number(str):
    | some(a) => a
    | none => 0
  end
where:
energi-to-number("") is 0
  energi-to-number("48") is 48
end

energi-tabell = transform-column(kWh-wealthy-consumer-data, "energi", energi-to-number)

fun car-energi-used-per-day(distance-travelled-per-day, distance-per-unit-of-fuel):
  energi-per-unit-of-fuel = 10
  ( distance-travelled-per-day /
    distance-per-unit-of-fuel ) *
  energi-per-unit-of-fuel

where:
  car-energi-used-per-day(10, 10) is 10
end
 
distance-traveld-per-day = 13
distance-per-unit-of-fuel = 16
energi-per-unit-of-fuel = 10
total-energy-per-day = sum(energi-tabell, "energi") + car-energi-used-per-day(distance-traveld-per-day, distance-per-unit-of-fuel)

print(total-energy-per-day)
bar-chart(energi-tabell, "komponent", "energi")

fun energi-to-number-with-car(str :: String) -> Number:
  cases(Option) string-to-number(str):
    | some(a) => a
    | none => car-energi-used-per-day(10, 10)
  end
where:
  energi-to-number("") is 0
energi-to-number("48") is 48
end
energi-tabell-with-car = transform-column(kWh-wealthy-consumer-data, "energi", energi-to-number-with-car)

print(energi-tabell-with-car)
bar-chart( energi-tabell-with-car, "komponent", "energi")