# MindMapAI ![Build Status](https://img.shields.io/badge/build-passing-brightgreen) ![Version](https://img.shields.io/badge/version-1.0.0-blue) ![License](https://img.shields.io/badge/license-MIT-yellowgreen)

## Project Description
MindMapAI is an innovative web application that leverages AI to assist users in creating and organizing their thoughts visually through mind maps. By integrating real-time collaboration and export functionalities, it aims to enhance brainstorming sessions for teams and individuals alike.

## Features
- 🧠 **AI-assisted mind mapping**: Users can input topics and the AI generates a structured mind map with related concepts.
- 🤝 **Collaborative brainstorming**: Multiple users can work on the same mind map in real-time, with chat functionality for discussions.
- 📤 **Export options**: Users can export their mind maps in various formats (PDF, image, text) for presentations or sharing.

## Tech Stack
### Frontend
- 🌐 **Next.js**: A React framework for server-side rendering and static site generation.

### Backend
- ⚡ **FastAPI**: A modern, fast (high-performance) web framework for building APIs with Python 3.6+ based on standard Python type hints.
- 🤖 **LangChain**: A framework for developing applications powered by language models.

### Database
- 🗄️ **PostgreSQL**: A powerful, open-source object-relational database system.

### AI Integration
- 🧠 **OpenAI**: API for integrating advanced AI capabilities.

## Installation
To set up MindMapAI locally, follow these steps:

- Clone the repository
bash
git clone https://github.com/gopal-prakash-codes/mindmapai.git
- Navigate to the project directory
bash
cd mindmapai
- Install the backend dependencies
bash
pip install -r requirements.txt
- Install the frontend dependencies
bash
cd frontend
npm install
- Set up the PostgreSQL database and update the configuration
- Run the backend server
bash
uvicorn main:app --reload
- Run the frontend development server
bash
npm run dev
## Usage
1. Open your web browser and navigate to `http://localhost:3000`.
2. Create a new mind map by entering a topic.
3. Collaborate with others by sharing the link and using the chat feature.
4. Export your mind map in your desired format.

## API Documentation
For detailed API documentation, please refer to the [API Docs](https://github.com/gopal-prakash-codes/mindmapai/docs/api.md).

## Testing
To run the tests for the backend, execute the following command:
bash
pytest
## Deployment
For deploying MindMapAI, follow these steps:

- Build the frontend for production
bash
cd frontend
npm run build
- Deploy the backend using a suitable platform (e.g., Heroku, AWS).
- Ensure the database is properly configured in the production environment.

## Contributing
We welcome contributions! Please follow these steps to contribute:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/YourFeature`).
3. Make your changes and commit them (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature/YourFeature`).
5. Open a pull request.

## License
This project is licensed under the MIT License. See the [LICENSE](https://github.com/gopal-prakash-codes/mindmapai/LICENSE) file for details.

## Acknowledgments
- Thanks to the contributors and the open-source community for their support and resources.
- Special thanks to the creators of the technologies used in this project.