hash = { data: { rooms:
    [ { id: 1, room_number: "201", capacity: 50}, { id: 2, room_number: "301", capacity: 200 }, { id: 3, room_number: "1B", capacity: 100}
    ],
    events: [
      { id: 1, room_id: 2, start_time: 18, end_time: 20, attendees: 75 },
      { id: 2, room_id: 1, start_time: 10, end_time: 18, attendees: 25 },
      { id: 3, room_id: 2, start_time: 10, end_time: 18, attendees: 20 },
      { id: 4, room_id: 3, start_time: 18, end_time: 21, attendees: 56 },
    ]
  }
}


room_array = hash[:data][:rooms]

def capacity(array)
  array.each do |v|
    if v[:room_number] == "201"
      return v[:capacity]
    end
  end
end

p capacity(room_array)

events_array = hash[:data][:events]

def attendees(room_array, events_array)
  events_array.each do |v|
  if v[:room_id] == 1 && v[:attendees] <= capacity(room_array)
    return 'ok'
  # else
  #   p "wrong"
  end
end
end

p attendees(room_array, events_array)
