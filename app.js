const express = require('express');

const app = express();


app.get('/', (request, response) => {
    response.status(200).json({
        msg:'Hello Backend AWS EC2 DOCKER back_express_aws_ec2_docker'
    })
})

app.listen(3010);