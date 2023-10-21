function openNav() {
  document.getElementById("mySidebar").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
  document.getElementById("main-content").style.marginLeft = "250px";
  document.getElementById("main").style.display = "none";
}

function closeNav() {
  document.getElementById("mySidebar").style.width = "0";
  document.getElementById("main").style.marginLeft = "0";
  document.getElementById("main").style.display = "block";
}
// Search Bar for Internship Management
document.getElementById('searchForm').addEventListener('submit', function (event) {
  event.preventDefault();
  const searchInput = document.getElementById('searchInput').value;
  searchAndSort(searchInput);
});

function searchAndSort(searchInput) {
  // Send the input data to the PHP script using AJAX
  const xhr = new XMLHttpRequest();
  xhr.onreadystatechange = function () {
    if (xhr.readyState === 4 && xhr.status === 200) {
      const sortedData = JSON.parse(xhr.responseText);
      updateSearchResults(sortedData);
    }
  };
  xhr.open('POST', 'search.php', true);
  xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
  xhr.send('searchInput=' + encodeURIComponent(searchInput));
}

function updateSearchResults(sortedData) {
  const searchResults = document.getElementById('searchResults');
  searchResults.innerHTML = ''; // Clear previous results

  sortedData.forEach(function (item) {
    const li = document.createElement('li');
    li.textContent = item;
    li.classList.add('list-group-item');
    searchResults.appendChild(li);
  });
}

// Search Bar for Intern Management
document.getElementById('searchFormOrders').addEventListener('submit', function (event) {
  event.preventDefault();
  const searchInput = document.getElementById('searchInputOrders').value;
  searchAndSortOrders(searchInput);
});

function searchAndSortOrders(searchInput) {
  // Send the input data to the PHP script using AJAX
  const xhr = new XMLHttpRequest();
  xhr.onreadystatechange = function () {
    if (xhr.readyState === 4 && xhr.status === 200) {
      const sortedData = JSON.parse(xhr.responseText);
      updateSearchResultsOrders(sortedData);
    }
  };
  xhr.open('POST', 'search.php', true);
  xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
  xhr.send('searchInput=' + encodeURIComponent(searchInput));
}

function updateSearchResultsOrders(sortedData) {
  const searchResults = document.getElementById('searchResultsOrders');
  searchResults.innerHTML = ''; // Clear previous results

  sortedData.forEach(function (item) {
    const li = document.createElement('li');
    li.textContent = item;
    li.classList.add('list-group-item');
    searchResults.appendChild(li);
  });
}



