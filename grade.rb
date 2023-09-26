GRADES = { 'A' => (90..100), 'B' => (80..90), 'C' => (70..80), 'D' => (60..70), 'F' => (0..60)}

def get_grade(grade1, grade2, grade3)
  average = (grade1 + grade2 + grade3) / 3
  GRADES.each do |key, value|
    return key if GRADES[key].include?(average)
  end
end

puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"