# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create([
    {
        name: 'The C Programming Language',
        description: %{We have improved the exposition of critical features, such as pointers, that are central to C programming. We have refined the original examples, and added new examples in several chapters. C wears well as one's experience with it grows. We hope that this book will help you learn C and use it well},
        image: 'c.jpg',
        price: 28.1
    },
    {
        name: 'The Ruby Programming Language: Everything You Need to Know',
        description: %{This book begins with a quick-start tutorial to the language, and then explains the language in detail from the bottom up: from lexical and syntactic structure to datatypes to expressions and statements and on through methods, blocks, lambdas, closures, classes and modules.},
        image: 'rb.jpg',
        price: 24.5
    },
    {
        name: 'Deep Learning (Adaptive Computation and Machine Learning)',
        description: %{An introduction to a broad range of topics in deep learning, covering mathematical and conceptual background, deep learning techniques used in industry, and research perspectives.},
        image: 'dl.jpg',
        price: 37.99
    },
    {
        name: 'Neural Networks and Deep Learning: A Textbook',
        description: %{This book covers both classical and modern models in deep learning. The primary focus is on the theory and algorithms of deep learning. The theory and algorithms of neural networks are particularly important for understanding important concepts, so that one can understand the important design concepts of neural architectures in different applications.},
        image: 'nn.jpg',
        price: 62.99
    }
])

User.create([
    {
        name: 'admin',
        password: '123456'
    }
])