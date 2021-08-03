export const createVote = (vote) => (
    $.ajax({
        method: 'POST',
        url: `api/votes/`,
        data: {
            vote
        }
    })
)

export const deleteVote = (vote) => (
    $.ajax({
        method: 'DELETE',
        url: `api/votes/1`,
        data: vote
    })
)