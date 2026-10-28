from google.cloud import bigquery

client = bigquery.Client()

query = """
    SELECT name, count
    FROM `babynames.names_2014`
    WHERE gender = 'F'
    ORDER BY count DESC
    LIMIT 10
"""

query_job = client.query(query)

for row in query_job:
    print(f"{row.name}: {row.count}")
