# Orca Sheets Knowledge Base

A comprehensive guide to using Orca Sheets - a powerful data analytics application that combines spreadsheet functionality with advanced analytics and AI capabilities.

---

## Table of Contents

1. [Getting Started](#getting-started)
2. [Project Management](#project-management)
3. [Importing Data](#importing-data)
4. [Viewing and Navigating Data](#viewing-and-navigating-data)
5. [Filtering Data](#filtering-data)
6. [Pivot Tables](#pivot-tables)
7. [Creating Visualizations](#creating-visualizations)
8. [Building Dashboards](#building-dashboards)
9. [Joining Data](#joining-data)
10. [Using Macros](#using-macros)
11. [Column Statistics](#column-statistics)
12. [AI Chat Interface](#ai-chat-interface)
13. [Global Search](#global-search)
14. [Exporting Data](#exporting-data)
15. [Settings](#settings)
16. [Guided Tours](#guided-tours)
17. [Keyboard Shortcuts](#keyboard-shortcuts)

---

## Getting Started

### Purpose
Orca Sheets helps you analyze, visualize, and transform data from various file formats. It provides spreadsheet-like functionality with database-level power and AI-assisted data exploration.

### How to Use It (Step-by-Step)

1. **Launch the application** - When you first open Orca Sheets, you'll see a splash screen followed by the onboarding flow.

2. **Authentication** - Sign in with your credentials or continue as a guest user.

3. **Accept Terms and Conditions** - On first use, review and accept the terms of service.

4. **Complete the questionnaire** (optional) - Answer a few questions about how you plan to use the application, or skip this step.

5. **Select or create a project** - Choose an existing project from the list or create a new one to begin working with your data.

### Conceptual Explanation
Orca Sheets organizes your work into **projects**. Each project contains one or more data files (sheets), along with any analyses, charts, or dashboards you create. Think of a project as a workspace that keeps all related data and analyses together.

---

## Project Management

### Purpose
Projects are containers that organize your data files, analyses, visualizations, and dashboards in one place.

### How to Use It (Step-by-Step)

**Creating a New Project:**
1. From the project selection screen, click the "Import Data" or "New Project" button.
2. Enter a name for your project.
3. Select the data files you want to include (CSV, Excel, Parquet, etc.).
4. Review the data preview to verify your files loaded correctly.
5. Click "Continue" to create the project and enter the main workspace.

**Opening an Existing Project:**
1. From the project selection screen, use the search bar to find your project.
2. Click on the project name to open it.
3. The main workspace loads with your data and any saved analyses.

**Navigating Within a Project:**
- Use the **Project Tree** on the left side to browse files, dashboards, and visualizations.
- Click any item to open it in the main workspace.
- Use the **Project Home** button in the side menu to return to the project selection screen.

### Conceptual Explanation
A project in Orca Sheets is similar to a folder on your computer, but with enhanced organization for data work. It automatically tracks your files, remembers your analyses, and keeps your visualizations organized together.

### Common Variations
- **Opening files directly**: You can double-click supported files on your computer to automatically create a new project with those files.
- **Syncing projects**: If your project is connected to cloud storage, use the sync icon to update your data.

---

## Importing Data

### Purpose
Bring your data into Orca Sheets from various file formats to begin analysis.

### How to Use It (Step-by-Step)

1. When creating a new project or adding files to an existing project, click "Add Sheet" or use the file import option.

2. Select your data file(s). Supported formats include:
   - **CSV** - Comma-separated values
   - **TSV** - Tab-separated values
   - **Excel** (XLS, XLSX) - Microsoft Excel spreadsheets
   - **Parquet** - Columnar data format
   - **GZ** - Compressed files

3. The application automatically detects column types and displays a preview of your data.

4. Review the **Data Summary** showing the number of rows and columns.

5. Check the **Columns View** to verify column names and data types.

6. Click "Continue" to load the data into your project.

### Conceptual Explanation
When you import data, Orca Sheets reads your file and converts it into an optimized format for fast analysis. This process is called "optimization" and enables quick operations even on large datasets.

### Common Variations
- **Drag and drop**: You can drag files directly onto the application window.
- **Multiple files**: Select multiple files at once to add them as separate sheets in your project.

### Notes
- Large files may take a moment to optimize. The status bar shows optimization progress.
- If a file cannot be optimized, some features may be limited. The application will notify you if this occurs.

---

## Viewing and Navigating Data

### Purpose
Browse, scroll, and explore your data in a familiar spreadsheet-like interface.

### How to Use It (Step-by-Step)

1. Click on a sheet in the Project Tree to open it.

2. The data displays in a grid format:
   - Scroll horizontally to see more columns
   - Scroll vertically to see more rows
   - Column headers show the column name and data type

3. **Resize columns** by dragging the column borders.

4. **Sort data** by clicking on column headers.

5. Use the **Sheet Tabs** at the bottom to switch between open sheets and analyses.

6. The **Performance indicator** shows row limits and system status.

### Conceptual Explanation
The data grid is your primary view of the data, similar to Excel or Google Sheets. Each row represents one record, and each column represents one field or attribute.

### Common Variations
- **Multiple sheets**: Switch between sheets using tabs at the bottom of the screen.
- **Aggregation results**: Pivot tables, chat results, and other analyses appear as separate tabs.

### Notes
- Large datasets display up to 1,000 rows at a time for performance.
- The full dataset is always used for calculations and exports.

---

## Filtering Data

### Purpose
Show only the rows that match specific conditions, helping you focus on relevant data.

### How to Use It (Step-by-Step)

1. Click the **Filter** icon in the toolbar (funnel icon), or use the keyboard shortcut `Cmd/Ctrl + Shift + F`.

2. The filter panel opens, showing your current filters (if any).

3. **Add a filter condition:**
   - Select a **column** from the dropdown
   - Choose an **operator** (equals, contains, greater than, etc.)
   - Enter the **value** to match

4. **Add multiple conditions:**
   - Click "Add Condition" to add another filter
   - Choose **AND** or **OR** to combine conditions:
     - AND: All conditions must be true
     - OR: Any condition can be true

5. Click **"Apply Filters"** to filter your data.

6. To remove filters, click **"Clear Filters"**.

**Saving Filters for Reuse:**
1. After creating your filter conditions, click "Save Filters"
2. Enter a name for your saved filter
3. The filter is saved and can be reused later from the "Search saved filters" dropdown

### Conceptual Explanation
Filters temporarily hide rows that don't match your criteria. The original data remains unchanged - filtering just changes what you see. Think of it like using a highlighter to focus on specific information.

**Available Operators by Data Type:**
- **Numbers**: equals, not equals, less than, greater than, less than or equal, greater than or equal, is in list, is not in list
- **Text**: equals, not equals, contains, does not contain, is in list, is not in list
- **Empty values**: is empty, is not empty

### Common Variations
- **Quick filter**: Apply a single condition for fast filtering.
- **Complex filters**: Combine multiple AND/OR conditions for advanced filtering.
- **Create sheet from filter**: After filtering, create a new sheet containing only the filtered data.

---

## Pivot Tables

### Purpose
Summarize large datasets by grouping rows and calculating aggregate values like sums, averages, or counts.

### How to Use It (Step-by-Step)

1. Click **"Pivot"** in the toolbar menu, or use the keyboard shortcut `Cmd/Ctrl + Shift + P`.

2. Configure your pivot table:
   - **Aggregate Function**: Choose how to calculate values:
     - COUNT - Count the number of items
     - SUM - Add up all values
     - MIN - Find the smallest value
     - MAX - Find the largest value
     - AVG - Calculate the average
     - MEDIAN - Find the middle value

   - **Aggregate Column**: Select which numeric column to calculate

   - **Group By Column**: Select how to group your data (e.g., by category, by date)

   - **Pivot Column** (optional): Add a second dimension to your summary

3. Click **"Submit"** to generate the pivot table.

4. Results appear in a new tab below your main data view.

### Conceptual Explanation
A pivot table reorganizes your data to show summary statistics. Instead of seeing every individual row, you see totals or averages grouped by categories you choose.

**Example:** If you have sales data with columns for Product, Region, and Revenue:
- Group By: Product
- Aggregate: SUM of Revenue
- Result: Total revenue for each product

### Notes
- Aggregate columns must contain numeric data (numbers, not text).
- The pivot result opens as a new sheet tab that you can further analyze or visualize.

---

## Creating Visualizations

### Purpose
Transform your data into charts and graphs for visual analysis and presentation.

### How to Use It (Step-by-Step)

1. Click **"Graphs"** in the toolbar, or click the chart icon in the grid toolbar, or use `Cmd/Ctrl + Shift + G`.

2. **Select the data source:**
   - Choose which sheet or aggregation result to visualize
   - The sheet list shows both original data and pivot table results

3. **Choose a chart type:**
   - **Line Chart** - Show trends over time
   - **Bar Chart** - Compare values across categories
   - **Pie Chart** - Show proportions of a whole
   - **Scatter Plot** - Show relationships between two variables
   - **Candlestick Chart** - Display financial open/high/low/close data
   - **Bump Chart** - Track rankings over time
   - **Sankey Chart** - Visualize flow between categories

4. **Configure the chart:**
   - **X-Axis**: Select the column for horizontal axis
   - **Y-Axis**: Select the column(s) for vertical axis
   - For specialized charts, additional options appear (e.g., Open, Close, High, Low for candlestick)

5. **Optional: Add multiple series** (for bar and line charts):
   - Add additional Y-axis columns to compare multiple measures
   - Enable "Stacked" to show values stacked on top of each other

6. Click **"Done"** to create the visualization.

### Conceptual Explanation
Charts provide a visual way to understand patterns in your data that might be hard to see in a table of numbers. Different chart types serve different purposes:

- **Line charts** are best for showing how something changes over time
- **Bar charts** are best for comparing amounts across categories
- **Pie charts** are best for showing how a total is divided into parts
- **Scatter plots** are best for finding relationships between two measurements

### Chart-Specific Configuration

**Bump Chart:**
- X-Axis: Time period or sequence
- Y-Axis: Ranking or value
- Category: The item being tracked

**Sankey Chart:**
- Source Node: Where the flow starts
- Target Node: Where the flow ends
- Flow Value: The size of the flow

**Candlestick Chart:**
- X-Axis: Date or time
- Open: Opening value
- Close: Closing value
- High: Highest value
- Low: Lowest value

---

## Building Dashboards

### Purpose
Combine multiple charts and tables into a single view for comprehensive data monitoring.

### How to Use It (Step-by-Step)

1. Click **"Dashboard"** in the toolbar, or use `Cmd/Ctrl + Shift + D`.

2. **Name your dashboard** - Enter a descriptive name in the text field.

3. **Select components to include:**
   - Choose from your existing charts (visualizations)
   - Choose from your analysis results (pivot tables, aggregations)
   - Select multiple items to combine them in one dashboard

4. Click **"Add"** to create the dashboard.

5. The dashboard opens in a new tab, showing all selected components together.

**Editing an Existing Dashboard:**
1. Open the dashboard from the Project Tree
2. Access the edit option to add or remove components
3. Update the name if needed
4. Click "Update" to save changes

### Conceptual Explanation
A dashboard is a collection of charts and tables arranged on a single screen. It gives you a "big picture" view of your data, allowing you to monitor multiple metrics at once without switching between different views.

### Notes
- You must create visualizations or aggregations first before adding them to a dashboard.
- Dashboards update automatically when the underlying data changes.

---

## Joining Data

### Purpose
Combine data from multiple sheets based on matching values, similar to VLOOKUP in Excel.

### How to Use It (Step-by-Step)

1. Click **"Join"** in the toolbar, or use `Cmd/Ctrl + Shift + J`.

2. **Select the base table** (left side of the join):
   - This is your primary data source
   - Choose which columns to include by clicking the column selector icon

3. **Choose a join type:**
   - **Inner Join** - Only rows that match in both tables
   - **Left Join** - All rows from the base table, matching rows from the second table
   - **Right Join** - All rows from the second table, matching rows from the base table
   - **Full Join** - All rows from both tables

4. **Select the table to join with** (right side):
   - Choose the second sheet
   - Select which columns to include

5. **Set join conditions:**
   - Select the matching column from the base table
   - Select the corresponding column from the second table
   - Columns must contain compatible data types

6. **Add additional conditions** (optional):
   - Click "AND" to add more matching criteria
   - Multiple conditions must all be true for rows to match

7. Click **"Preview"** to see the join result before committing.

8. If satisfied with the preview, complete the join to create a new combined dataset.

**Adding Multiple Joins:**
- Click "Add Join" to join with additional tables
- Each new join uses the previous result as its base

### Conceptual Explanation
Joining combines data from separate tables into one. Think of it like matching up two lists based on a common identifier (like customer ID or product code).

**Join Types Explained:**
- **Inner Join**: Like finding items that appear on both lists
- **Left Join**: Keep everything from your first list, add matching info from the second
- **Right Join**: Keep everything from the second list, add matching info from the first
- **Full Join**: Keep everything from both lists, matching where possible

### Notes
- Join columns must contain compatible data types (you cannot join a number column with a text column).
- The preview shows a sample of the result before you commit.

---

## Using Macros

### Purpose
Create custom calculated columns using formulas and functions, similar to Excel formulas.

### How to Use It (Step-by-Step)

1. Click the **Macro** icon in the toolbar (flower icon).

2. The macro input field appears.

3. **Write your formula:**
   - Type `$` to see a list of available column names
   - Type `?` to see a list of available functions
   - Combine columns and functions to create calculations

4. Press `Ctrl + Enter` to execute the macro.

5. The calculated column appears in your data grid.

**Example Formulas:**
- `$Price * $Quantity` - Multiply two columns
- `?UPPER($Name)` - Convert name column to uppercase
- `$Revenue - $Cost` - Calculate profit

### Conceptual Explanation
Macros let you create new data from existing columns using mathematical operations and text functions. Instead of manually calculating values, you write a formula once and it applies to every row automatically.

### Notes
- Column names are referenced using `$` followed by the column name
- Functions are accessed using `?` followed by the function name
- Macros create new columns; they don't modify existing data
- Results are added to your current view

---

## Column Statistics

### Purpose
Quickly analyze the distribution and key metrics of a numeric column.

### How to Use It (Step-by-Step)

1. Click the **Stats** icon in the toolbar (chart icon).

2. Select a numeric column from the dropdown.

3. Click **"Submit"**.

4. A new tab opens showing statistics for that column:
   - **Count** - Number of values
   - **Minimum** - Smallest value
   - **Maximum** - Largest value
   - **Average** - Mean value
   - **Standard Deviation** - Measure of spread

### Conceptual Explanation
Statistics give you a quick summary of what's in a column of numbers. Instead of scrolling through thousands of rows, you can instantly see the range, center, and spread of your data.

### Notes
- Statistics are only available for numeric columns (numbers, not text).
- The result appears as a new aggregation tab.

---

## AI Chat Interface

### Purpose
Interact with your data using natural language questions. Ask questions in plain English and receive data-driven answers, analyses, and visualizations.

### How to Use It (Step-by-Step)

1. Click the **Chat** icon or use `Cmd/Ctrl + Shift + O`.

2. The chat panel opens on the side of your screen.

3. **Type your question** in natural language. Examples:
   - "Show me total sales by region"
   - "What was the highest revenue last month?"
   - "Find all customers who ordered more than $1000"

4. **Reference columns** by typing `$` to see a list of column names.

5. Press `Ctrl + Enter` or click the send button to submit your question.

6. The AI processes your question and returns results in a new tab.

7. **Interact with responses:**
   - Click on a chat message to view its results
   - Like or dislike responses to provide feedback
   - Mark responses as favorites for easy access later
   - Regenerate responses if needed

**Viewing Chat History:**
- Previous questions and answers appear in the chat panel
- Click any past message to reload its results
- Access favorites using the star icon

### Conceptual Explanation
The AI Chat feature translates your plain English questions into database queries automatically. Instead of writing complex formulas or knowing query syntax, you describe what you want in your own words, and the AI figures out how to get that information from your data.

### Notes
- Chat is a premium feature that may require an upgraded account.
- The AI works best when you reference specific column names from your data.
- Complex questions may take a moment to process.
- Results appear as new analysis tabs that you can further work with.

---

## Global Search

### Purpose
Quickly find and access any feature, sheet, analysis, or visualization in your project.

### How to Use It (Step-by-Step)

1. Press `Cmd/Ctrl + K` to open Global Search.

2. **Search for features:**
   - Type to filter the list of available functions
   - Click on a function to access it directly

3. **Available quick actions:**
   - **Chat** - Open AI chat interface
   - **Filters** - Open filter panel
   - **Pivot** - Create pivot table
   - **Join** - Start a data join
   - **Visualization** - Create a chart
   - **Dashboard** - Create a dashboard

4. **Find recent items:**
   - Scroll down to see recently accessed sheets and analyses
   - Click any recent item to open it

5. **Use commands:**
   - Type `/chat` followed by your question to start a chat directly
   - Type `/orcai` followed by a command for AI-assisted operations

6. Press **Enter** on a command or click **Close** to exit.

### Conceptual Explanation
Global Search is a command palette that gives you quick access to everything in Orca Sheets. Instead of navigating through menus, you can type what you're looking for and jump directly to it.

### Notes
- Each feature shows its keyboard shortcut for future reference.
- Recent items are sorted by how recently you accessed them.

---

## Exporting Data

### Purpose
Save your data, filtered results, or analysis output to files you can share or use elsewhere.

### How to Use It (Step-by-Step)

1. Navigate to the sheet or analysis result you want to export.

2. Click the **Download** icon in the toolbar (down arrow icon).

3. Choose your export format:
   - **CSV** - Comma-separated values for spreadsheet applications
   - **Other formats** - As available based on your data type

4. Choose a save location on your computer.

5. The file is saved with your data.

### Conceptual Explanation
Exporting creates a copy of your data in a standard file format that other applications can read. This lets you share your work, import it into other tools, or create backups.

### Common Variations
- **Export filtered data**: Apply filters first, then export to save only the filtered rows.
- **Export analysis results**: Navigate to a pivot table or chat result tab before exporting.
- **Export visualizations**: Charts can be exported as images from the dashboard view.

---

## Settings

### Purpose
Configure your account, manage API tokens, and customize application preferences.

### How to Use It (Step-by-Step)

1. Click the **Settings** icon in the side menu, or use `Cmd/Ctrl + ,`.

2. Navigate through settings categories:
   - **Token** - Manage your API authentication token

3. Use the search bar to find specific settings.

4. Make changes as needed.

5. Close the settings panel when done (changes save automatically).

### Settings Categories

**Token:**
- View your current authentication token
- Copy token for use in other applications
- Refresh or regenerate tokens as needed

### Notes
- Some settings may only be available with premium accounts.
- Changes to certain settings may require restarting the application.

---

## Guided Tours

### Purpose
Learn how to use Orca Sheets through interactive step-by-step walkthroughs.

### How to Use It (Step-by-Step)

**Automatic Tours (First Use):**
1. Tours start automatically when you first access certain features
2. Each step highlights a specific area of the interface
3. Read the explanation and click to continue to the next step
4. Complete the tour to mark it as done

**Replaying Tours:**
1. Click the **Replay Tour** option in the side menu
2. Select which tour you want to replay
3. The tour begins from the first step

### Available Tours

1. **Project Selection** - Learn how to find and select projects
2. **Project Creation** - Understand how to create new projects and import data
3. **Main Layout** - Overview of the main workspace and all features
4. **Sheet Layout** - Learn about the data grid toolbar and features
5. **Pivot Configuration** - How to set up pivot tables
6. **Chat Interface** - Learn to use the AI chat features

### Conceptual Explanation
Guided tours are interactive tutorials that walk you through features step by step. Instead of reading documentation, you learn by seeing each feature highlighted in context.

---

## Keyboard Shortcuts

### Purpose
Speed up your workflow using keyboard shortcuts instead of mouse clicks.

### Essential Shortcuts

| Action | Windows/Linux | Mac |
|--------|---------------|-----|
| Global Search | `Ctrl + K` | `Cmd + K` |
| Open Chat | `Ctrl + Shift + O` | `Cmd + Shift + O` |
| Create Dashboard | `Ctrl + Shift + D` | `Cmd + Shift + D` |
| Add Visualization | `Ctrl + Shift + G` | `Cmd + Shift + G` |
| Create Pivot | `Ctrl + Shift + P` | `Cmd + Shift + P` |
| Open Filters | `Ctrl + Shift + F` | `Cmd + Shift + F` |
| Start Join | `Ctrl + Shift + J` | `Cmd + Shift + J` |
| Open Settings | `Ctrl + ,` | `Cmd + ,` |

### Context-Specific Shortcuts

**In Filter Panel:**
- Submit filters: `Ctrl + Enter`

**In Macro Input:**
- Execute macro: `Ctrl + Enter`
- List columns: Type `$`
- List functions: Type `?`

**In Chat:**
- Send message: `Ctrl + Enter`
- Reference columns: Type `$`

### Conceptual Explanation
Keyboard shortcuts let you access features without moving your hands from the keyboard. Learning the shortcuts for features you use frequently can significantly speed up your workflow.

---

## Connectors (Premium Feature)

### Purpose
Connect to external databases and cloud storage to import data directly into Orca Sheets.

### How to Use It (Step-by-Step)

1. Click **"Connectors"** in the toolbar menu.

2. Choose your connection type:
   - **Databases**: PostgreSQL, MySQL, MSSQL, ClickHouse, Snowflake, Redshift, Athena
   - **Cloud Storage**: Amazon S3, Cloudflare R2
   - **APIs**: Custom API connections
   - **Data Platforms**: Iceberg

3. Enter connection details:
   - Server address
   - Authentication credentials
   - Database name
   - Other required parameters

4. Test the connection to verify it works.

5. Save the connector for future use.

6. Use the connector to import data into your project.

### Conceptual Explanation
Connectors let you pull data directly from databases and cloud services instead of manually exporting and importing files. This is useful for working with live data that updates regularly.

### Notes
- Connectors is a premium feature that requires an upgraded account.
- Credentials are stored securely on your local machine.
- Some connectors may require additional configuration based on your data source.

---

## Recipes (Premium Feature)

### Purpose
Use pre-built data transformation workflows for common platforms and data types.

### How to Use It (Step-by-Step)

1. Click **"Recipe"** in the toolbar menu.

2. Browse available recipes by category:
   - E-commerce: Shopify, ONDC
   - Advertising: Google Ads, Meta Ads
   - Analytics: GA4
   - Other: IPL, Smart Energy, custom datasets

3. Select a recipe that matches your data source.

4. Configure any required parameters.

5. Apply the recipe to transform your data.

### Conceptual Explanation
Recipes are pre-built templates that know how to work with specific types of data. Instead of figuring out the right transformations yourself, recipes apply proven workflows that extract insights from common data sources.

### Notes
- Recipes is a premium feature that requires an upgraded account.
- Your data must match the expected format for the recipe to work correctly.

---

## Troubleshooting

### Common Issues and Solutions

**"Table is not optimized"**
- The data file needs to be processed before analysis
- Wait for optimization to complete (check the progress indicator)
- Try re-importing the file if optimization fails

**Slow performance with large files**
- The application limits display to 1,000 rows for performance
- All rows are still used in calculations and exports
- Consider filtering to reduce the visible data

**Chat feature not available**
- Chat is a premium feature
- Check your account status in Settings
- Contact support for access

**File won't import**
- Verify the file format is supported (CSV, Excel, Parquet, etc.)
- Check that the file isn't corrupted or empty
- Ensure you have read permissions for the file

---

## Glossary

**Aggregation**: Combining multiple values into a single summary value (like sum, average, or count).

**Dashboard**: A collection of charts and tables displayed together for monitoring.

**DSL**: Domain Specific Language - the internal format used to define data operations.

**Filter**: A condition that shows only rows matching specific criteria.

**Join**: Combining data from multiple tables based on matching values.

**Macro**: A custom formula that creates calculated columns.

**Optimization**: Converting data files to a fast internal format for analysis.

**Pivot Table**: A summary view that groups data and calculates aggregate values.

**Project**: A workspace containing data files and related analyses.

**Sheet**: A single data table within a project.

**Tab**: A view within the workspace (sheets, analyses, charts, dashboards).

**Visualization**: A chart or graph created from your data.

---

*This knowledge base covers all major features of Orca Sheets. For additional help, use the in-app guided tours or contact support.*
