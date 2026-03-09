
const { MongoClient, ServerApiVersion } = require('mongodb');
//Make username and password dynamic through .env files
let username = ""
let password = ""
const uri = `mongodb+srv://${username}:${password}@uoa-2024-capstoneteam-2.ylgc0ck.mongodb.net/?retryWrites=true&w=majority&appName=UoA-2024-CapstoneTeam-26`;

// Create a MongoClient with a MongoClientOptions object to set the Stable API version
const client = new MongoClient(uri, {
  serverApi: {
    version: ServerApiVersion.v1,
    strict: true,
    deprecationErrors: true,
  }
});

async function run() {
  try {
    
    // Get the database and collection on which to run the operation
    const database = client.db("sample_mflix");
    const movies = database.collection("movies");
    // Query for a movie that has the title 'The Room'
    const query = { title: "The Room" };
    const options = {
      // Sort matched documents in descending order by rating
      sort: { "imdb.rating": -1 },
      // Include only the `title` and `imdb` fields in the returned document
      projection: { _id: 0, title: 1, imdb: 1 },
    };
    // Execute query
    const movie = await movies.findOne(query, options);
    // Print the document returned by findOne()
    console.log(movie);
  } finally {
    await client.close();
  }
}
run().catch(console.dir);
