VALID_ANIMALS = {
  dog_breeds: ['Pug', 'Boxer', 'Retriever'],
  tallest_animal: 'Giraffe',
}

def animal_validation(animal_hash)
  if animal_hash[:dog_breeds] == VALID_ANIMALS[:dog_breeds]
    puts 'correct'
  else
    puts 'incorrect'
  end

  if animal_hash[:tallest_animal] == VALID_ANIMALS[:tallest_animal]
    puts 'correct'
  else
    puts 'incorrect'
  end
end

animal_validation({
  dog_breeds: ['Pug', 'Boxer', 'Retriever'],
  tallest_animal: 'Giraffe',
})
# correct
# correct

animal_validation({
  dog_breeds: ['Bengal', 'Boxer', 'Retriever'],
  tallest_animal: 'Giraffe',
})
# incorrect
# correct

animal_validation({
  dog_breeds: ['Pug', 'Boxer', 'Retriever'],
  tallest_animal: 'Mouse',
})
# correct
# incorrect