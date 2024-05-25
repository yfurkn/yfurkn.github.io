const apiKey = 'a2478cb9de144a008bc9d1b0a9099c70'; // the API key for accessing the News API
const apiUrl = `https://newsapi.org/v2/everything?q=science&apiKey=${apiKey}`; // the API URL for fetching science-related news

async function fetchNews() {
    try {
        const response = await fetch(apiUrl);    // make a request to the News API
        const data = await response.json(); // parse the response data as JSON
        displayNews(data.articles); // display the fetched news articles
    } catch (error) {
        console.error('An error occurred while pulling the news:', error);
    }
}

function displayNews(articles) {
    const newsContainer = document.getElementById('news-container');
    newsContainer.innerHTML = '';

    articles.forEach(article => {
        const newsItem = document.createElement('div');
        newsItem.classList.add('news-item');

        newsItem.innerHTML = `
            <h2>${article.title}</h2>
            <p>${article.description || 'No caption!'}</p>
            <a href="${article.url}" target="_blank">Read the News</a>
        `;

        // append the news item to the news container
        newsContainer.appendChild(newsItem);
    });
}

fetchNews();
