
SELECT devices.device_id, name, event_id, event_time FROM devices
JOIN events ON devices.device_id = events.device_id
WHERE devices.device_id = 3
ORDER BY event_time;

SELECT "";
SELECT event_type, COUNT(*) AS count FROM events
GROUP BY event_type;

SELECT "";
SELECT devices.device_id, name, event_type, COUNT(*) AS count FROM devices
JOIN events ON devices.device_id = events.device_id
WHERE events.event_type = "ошибка"
GROUP BY  devices.device_id, event_type
HAVING count > 0;

SELECT "";
SELECT devices.device_id, name, MAX(event_time) FROM devices
JOIN events ON devices.device_id = events.device_id
GROUP BY devices.device_id;

SELECT "";
SELECT devices.device_id, name FROM devices
LEFT JOIN events ON events.device_id = devices.device_id
AND events.event_type = "ошибка"
WHERE events.event_id IS NULL;
