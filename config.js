document.addEventListener("DOMContentLoaded", function() {
    const superShyButton = document.getElementById("superShyButton");

    superShyButton.addEventListener("click", function() {
        fetchBackendData(); // 백엔드로의 요청을 보내는 함수 호출
    });
});

function fetchBackendData() {
    // 여기에 백엔드로 요청을 보내는 코드 작성
    const API_BASE_URL =  'https://web.seunghobet.link';
    const endpoint = '/api/super-shy'; // 클릭 시 요청할 엔드포인트를 변경

    fetch(API_BASE_URL + endpoint)
        .then(response => response.json())
        .then(data => {
            // 요청에 대한 처리
            console.log(data);
        })
        .catch(error => {
            // 오류 처리
            console.error('Error:', error);
        });
}

