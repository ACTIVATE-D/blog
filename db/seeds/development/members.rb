names = %w(Taro Jiro Hana John Mike Sophy Bill Alex Mary Tom)
fnames = ["SATO", "SUZUKI", "TAKAHASHI", "TANAKA"]
gnames = ["TARO", "JIRO", "HANAKO"]
0.upto(9) do |idx|
  Member.create(
    number: idx + 10,
    name: name[idx],
    full_name: "#{fnames[idx % 4]} #{gnames[idx % 3]}",
    email: "#{names[idx]}@example.com",
    birthday: "1994-03-23",
    gender: [0, 0, 1][idx % 3],
    administrator: (idx == 0)

  )
end


