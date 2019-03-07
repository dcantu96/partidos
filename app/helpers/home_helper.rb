module HomeHelper
    def all_votes
        [
            {
                name: 'Partido Azul',
                votes: Vote.blue.count,
                percentage: average(Vote.blue),
                color: 'blue'
            },
            {
                name: 'Partido Amarillo',
                votes: Vote.yellow.count,
                percentage: average(Vote.yellow),
                color: 'yellow'
            },
            {
                name: 'Partido Morado',
                votes: Vote.purple.count,
                percentage: average(Vote.purple),
                color: 'purple'
            },
            {
                name: 'Partido Verde',
                votes: Vote.green.count,
                percentage: average(Vote.green),
                color: 'green'
            },
            {
                name: 'Otro',
                votes: Vote.other.count,
                percentage: average(Vote.other),
                color: 'other'
            }
        ]
    end

    def average(votes)
        ((votes.count.to_f/Vote.all.count.to_f)*100).round(2)
    end
end
