# What's in the bill? A Big Beautiful Bill Viewer Experiment

Make complex legislation easier to understand through AI-assisted contextual navigation.

## What It Does

This application allows users to view legislative bills in their browser and ask questions about the content through a chat interface. The AI provides answers with clickable references that link directly to relevant sections of the bill, making it easy to navigate and understand complex documents.

## Key Features

**Bill Viewer**: Display bill content in a clean, readable format in your browser with structured navigation between sections.

**AI Chat Interface**: Ask natural language questions about any part of the bill and receive detailed answers from a large language model.

**Contextual References**: AI responses include clickable links that jump directly to specific sections, paragraphs, or clauses mentioned in the answer.

## Quick Start

Prerequisites: Docker and Docker Compose

1. Clone and configure:
   ```bash
   git clone <repository>
   cd whats_in_the_bill
   cp .env.example .env
   ```

2. Start the system:
   ```bash
   make up
   ```

3. Access the application at http://localhost:8000

4. Stop the system:
   ```bash
   make down
   ```

## Development Commands

```bash
make up      # Start all services
make down    # Stop all services  
make logs    # View service logs
make clean   # Stop and remove volumes
make help    # Show all commands
```

## Use Cases

Citizens can better understand bills that affect their community. Researchers can analyze legislative language and patterns. Advocates can quickly locate relevant sections for policy work. Students can explore government and law through interactive engagement. Journalists can research and verify legislative content.
