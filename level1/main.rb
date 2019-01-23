require "json"
require "date"

# your code
filepath = 'level1/data.json'

workers_shifts = File.read(filepath)

data = JSON.parse(workers_shifts)

output = data["workers"].map do |shift|
   worker = data["workers"].find {|worker| worker["id"] == shift["id"]}
   if worker["id"] <= 2
    {id: worker["id"], price: (worker["price_per_shift"])* 3}
  else
    {id: worker["id"], price: (worker["price_per_shift"])* 2}
   end
end

puts output

# {
#   "workers": [
#     { "id": 1, "first_name": "Julie", "price_per_shift": 230 },
#     { "id": 2, "first_name": "Marc", "price_per_shift": 100 },
#     { "id": 3, "first_name": "Antoine", "price_per_shift": 230 },
#     { "id": 4, "first_name": "Emilie", "price_per_shift": 100 }
#   ],
#   "shifts": [
#     { "id": 1, "planning_id": 1, "user_id": 1, "start_date": "2017-1-1" },
#     { "id": 2, "planning_id": 1, "user_id": 2, "start_date": "2017-1-2" },
#     { "id": 3, "planning_id": 1, "user_id": 3, "start_date": "2017-1-3" },
#     { "id": 4, "planning_id": 1, "user_id": 4, "start_date": "2017-1-4" },
#     { "id": 5, "planning_id": 1, "user_id": 1, "start_date": "2017-1-5" },
#     { "id": 6, "planning_id": 1, "user_id": 2, "start_date": "2017-1-6" },
#     { "id": 7, "planning_id": 1, "user_id": 3, "start_date": "2017-1-7" },
#     { "id": 8, "planning_id": 1, "user_id": 4, "start_date": "2017-1-8" },
#     { "id": 9, "planning_id": 1, "user_id": 1, "start_date": "2017-1-9" },
#     { "id": 10, "planning_id": 1, "user_id": 2, "start_date": "2017-1-10" }
#   ]
# }
