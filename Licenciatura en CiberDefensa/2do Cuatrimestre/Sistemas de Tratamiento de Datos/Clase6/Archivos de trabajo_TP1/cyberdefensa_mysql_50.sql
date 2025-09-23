
-- =====================================================
-- Dataset: Ciberdefensa (UNDEF) - SQL Online (MySQL)
-- Autor: Nan (clase de Sistema de Tratamiento de Datos)
-- Fecha: 2025-08-19
-- =====================================================

-- Nota: si el entorno permite crear base de datos, descomentar:
-- CREATE DATABASE cyberdefensa;
-- USE cyberdefensa;

-- Tabla de activos

CREATE TABLE assets (
  asset_id INT PRIMARY KEY,
  hostname VARCHAR(50) NOT NULL,
  ip VARCHAR(45) NOT NULL UNIQUE,
  dept VARCHAR(40),
  owner VARCHAR(40),
  os VARCHAR(60),
  criticality VARCHAR(10)
) ENGINE=InnoDB;

CREATE TABLE intel_ioc (
  ioc_id INT PRIMARY KEY,
  ioc_type VARCHAR(10) NOT NULL,
  value VARCHAR(255) NOT NULL,
  source VARCHAR(40),
  first_seen DATE,
  last_seen DATE,
  confidence INT
) ENGINE=InnoDB;

CREATE TABLE incidents (
  incident_id INT PRIMARY KEY,
  opened_at DATETIME NOT NULL,
  asset_id INT NOT NULL,
  type VARCHAR(30) NOT NULL,
  severity VARCHAR(10),
  status VARCHAR(20),
  CONSTRAINT fk_inc_asset FOREIGN KEY (asset_id) REFERENCES assets(asset_id)
) ENGINE=InnoDB;

CREATE TABLE vulns (
  vuln_id INT PRIMARY KEY,
  asset_id INT NOT NULL,
  scanner VARCHAR(20),
  cve_id VARCHAR(20),
  cvss DECIMAL(3,1),
  detected_at DATE,
  status VARCHAR(20),
  CONSTRAINT fk_vuln_asset FOREIGN KEY (asset_id) REFERENCES assets(asset_id)
) ENGINE=InnoDB;

CREATE TABLE tickets (
  ticket_id INT PRIMARY KEY,
  incident_id INT NOT NULL,
  assigned_to VARCHAR(40),
  priority VARCHAR(10),
  status VARCHAR(20),
  opened_at DATETIME,
  closed_at DATETIME NULL,
  CONSTRAINT fk_ticket_incident FOREIGN KEY (incident_id) REFERENCES incidents(incident_id)
) ENGINE=InnoDB;

CREATE TABLE network_logs (
  log_id BIGINT PRIMARY KEY,
  ts DATETIME NOT NULL,
  src_ip VARCHAR(45) NOT NULL,
  src_port INT,
  dst_ip VARCHAR(45) NOT NULL,
  dst_port INT,
  protocol VARCHAR(10),
  action VARCHAR(10),
  bytes INT
) ENGINE=InnoDB;

-- INSERTS
-- assets (12 filas)
INSERT INTO assets (asset_id, hostname, ip, dept, owner, os, criticality) VALUES (1, 'SRV-AD-01', '10.10.0.10', 'Jefatura', 'TI', 'Windows Server 2019', 'Alta');
INSERT INTO assets (asset_id, hostname, ip, dept, owner, os, criticality) VALUES (2, 'SRV-WEB-01', '10.10.0.20', 'Operaciones', 'TI', 'Ubuntu 22.04', 'Alta');
INSERT INTO assets (asset_id, hostname, ip, dept, owner, os, criticality) VALUES (3, 'SRV-DB-01', '10.10.0.30', 'Inteligencia', 'TI', 'Ubuntu 22.04', 'Alta');
INSERT INTO assets (asset_id, hostname, ip, dept, owner, os, criticality) VALUES (4, 'NB-ANALISTA-01', '10.10.1.11', 'Ciberdefensa', 'Analista 1', 'Windows 11 Pro', 'Media');
INSERT INTO assets (asset_id, hostname, ip, dept, owner, os, criticality) VALUES (5, 'NB-ANALISTA-02', '10.10.1.12', 'Ciberdefensa', 'Analista 2', 'Windows 11 Pro', 'Media');
INSERT INTO assets (asset_id, hostname, ip, dept, owner, os, criticality) VALUES (6, 'NB-OPER-01', '10.10.2.21', 'Operaciones', 'Operador 1', 'Windows 10 Pro', 'Media');
INSERT INTO assets (asset_id, hostname, ip, dept, owner, os, criticality) VALUES (7, 'SRV-LOG-01', '10.10.0.40', 'Ciberdefensa', 'TI', 'Rocky Linux 9', 'Alta');
INSERT INTO assets (asset_id, hostname, ip, dept, owner, os, criticality) VALUES (8, 'FW-EDGE-01', '10.10.254.1', 'Redes', 'TI', 'Appliance', 'Alta');
INSERT INTO assets (asset_id, hostname, ip, dept, owner, os, criticality) VALUES (9, 'SRV-EMAIL-01', '10.10.0.50', 'Jefatura', 'TI', 'Debian 12', 'Alta');
INSERT INTO assets (asset_id, hostname, ip, dept, owner, os, criticality) VALUES (10, 'SRV-BACKUP-01', '10.10.0.60', 'Ciberdefensa', 'TI', 'FreeBSD 13', 'Alta');
INSERT INTO assets (asset_id, hostname, ip, dept, owner, os, criticality) VALUES (11, 'NB-CAD-01', '10.10.3.31', 'Logística', 'Cadete 1', 'Windows 10 Home', 'Baja');
INSERT INTO assets (asset_id, hostname, ip, dept, owner, os, criticality) VALUES (12, 'SRV-VPN-01', '10.10.0.70', 'Redes', 'TI', 'Ubuntu 20.04', 'Alta');
-- intel_ioc (8 filas)
INSERT INTO intel_ioc (ioc_id, ioc_type, value, source, first_seen, last_seen, confidence) VALUES (1, 'ip', '185.199.110.153', 'MISP-AR', '2025-07-10', '2025-08-10', 85);
INSERT INTO intel_ioc (ioc_id, ioc_type, value, source, first_seen, last_seen, confidence) VALUES (2, 'ip', '45.83.192.77', 'AlienVault OTX', '2025-08-05', '2025-08-18', 90);
INSERT INTO intel_ioc (ioc_id, ioc_type, value, source, first_seen, last_seen, confidence) VALUES (3, 'domain', 'login-seguro-ar[.]com', 'CERT.ar', '2025-08-01', '2025-08-15', 80);
INSERT INTO intel_ioc (ioc_id, ioc_type, value, source, first_seen, last_seen, confidence) VALUES (4, 'domain', 'update-win-service[.]net', 'MISP-AR', '2025-07-28', '2025-08-12', 70);
INSERT INTO intel_ioc (ioc_id, ioc_type, value, source, first_seen, last_seen, confidence) VALUES (5, 'hash', 'b1946ac92492d2347c6235b4d2611184', 'VirusTotal', '2025-07-22', '2025-08-03', 95);
INSERT INTO intel_ioc (ioc_id, ioc_type, value, source, first_seen, last_seen, confidence) VALUES (6, 'ip', '103.216.61.75', 'OTX', '2025-08-12', '2025-08-17', 60);
INSERT INTO intel_ioc (ioc_id, ioc_type, value, source, first_seen, last_seen, confidence) VALUES (7, 'ip', '201.231.155.44', 'ISP Abuse Desk', '2025-07-30', '2025-08-16', 65);
INSERT INTO intel_ioc (ioc_id, ioc_type, value, source, first_seen, last_seen, confidence) VALUES (8, 'domain', 'bank-argentina[.]co', 'CERT.ar', '2025-08-08', '2025-08-18', 88);
-- incidents (31 filas)
INSERT INTO incidents (incident_id, opened_at, asset_id, type, severity, status) VALUES (1001, '2025-08-12 10:05:00', 2, 'DDoS', 'Alta', 'Abierto');
INSERT INTO incidents (incident_id, opened_at, asset_id, type, severity, status) VALUES (1002, '2025-08-13 09:30:00', 4, 'Phishing', 'Media', 'Cerrado');
INSERT INTO incidents (incident_id, opened_at, asset_id, type, severity, status) VALUES (1003, '2025-08-14 16:45:00', 3, 'Exfiltración', 'Crítica', 'En análisis');
INSERT INTO incidents (incident_id, opened_at, asset_id, type, severity, status) VALUES (1004, '2025-08-15 11:20:00', 7, 'Malware', 'Alta', 'Abierto');
INSERT INTO incidents (incident_id, opened_at, asset_id, type, severity, status) VALUES (1005, '2025-08-16 14:10:00', 9, 'Spear Phishing', 'Alta', 'Abierto');
INSERT INTO incidents (incident_id, opened_at, asset_id, type, severity, status) VALUES (1006, '2025-08-17 08:00:00', 12, 'Fuerza Bruta', 'Media', 'Cerrado');
INSERT INTO incidents (incident_id, opened_at, asset_id, type, severity, status) VALUES (1007, '2025-08-18 10:00:00', 3, 'Ingeniería Social', 'Media', 'Abierto');
INSERT INTO incidents (incident_id, opened_at, asset_id, type, severity, status) VALUES (1008, '2025-08-18 14:00:00', 6, 'Crypto-mining', 'Crítica', 'En análisis');
INSERT INTO incidents (incident_id, opened_at, asset_id, type, severity, status) VALUES (1009, '2025-08-18 20:00:00', 2, 'Ingeniería Social', 'Alta', 'Abierto');
INSERT INTO incidents (incident_id, opened_at, asset_id, type, severity, status) VALUES (1010, '2025-08-19 05:00:00', 1, 'Crypto-mining', 'Crítica', 'Abierto');
INSERT INTO incidents (incident_id, opened_at, asset_id, type, severity, status) VALUES (1011, '2025-08-19 08:00:00', 10, 'Crypto-mining', 'Alta', 'Cerrado');
INSERT INTO incidents (incident_id, opened_at, asset_id, type, severity, status) VALUES (1012, '2025-08-19 14:00:00', 9, 'DDoS', 'Alta', 'Abierto');
INSERT INTO incidents (incident_id, opened_at, asset_id, type, severity, status) VALUES (1013, '2025-08-19 20:00:00', 10, 'Exfiltración', 'Media', 'En análisis');
INSERT INTO incidents (incident_id, opened_at, asset_id, type, severity, status) VALUES (1014, '2025-08-20 02:00:00', 10, 'Crypto-mining', 'Media', 'Abierto');
INSERT INTO incidents (incident_id, opened_at, asset_id, type, severity, status) VALUES (1015, '2025-08-20 08:00:00', 10, 'Phishing', 'Media', 'En análisis');
INSERT INTO incidents (incident_id, opened_at, asset_id, type, severity, status) VALUES (1016, '2025-08-20 17:00:00', 6, 'Compromiso de Cuenta', 'Media', 'En análisis');
INSERT INTO incidents (incident_id, opened_at, asset_id, type, severity, status) VALUES (1017, '2025-08-20 22:00:00', 4, 'DDoS', 'Media', 'Abierto');
INSERT INTO incidents (incident_id, opened_at, asset_id, type, severity, status) VALUES (1018, '2025-08-21 04:00:00', 9, 'Compromiso de Cuenta', 'Media', 'Cerrado');
INSERT INTO incidents (incident_id, opened_at, asset_id, type, severity, status) VALUES (1019, '2025-08-21 10:00:00', 10, 'Malware', 'Crítica', 'En análisis');
INSERT INTO incidents (incident_id, opened_at, asset_id, type, severity, status) VALUES (1020, '2025-08-21 16:00:00', 3, 'Compromiso de Cuenta', 'Alta', 'Cerrado');
INSERT INTO incidents (incident_id, opened_at, asset_id, type, severity, status) VALUES (1021, '2025-08-21 20:00:00', 9, 'Crypto-mining', 'Media', 'Cerrado');
INSERT INTO incidents (incident_id, opened_at, asset_id, type, severity, status) VALUES (1022, '2025-08-22 04:00:00', 12, 'Ransomware', 'Media', 'En análisis');
INSERT INTO incidents (incident_id, opened_at, asset_id, type, severity, status) VALUES (1023, '2025-08-22 11:00:00', 2, 'Malware', 'Baja', 'En análisis');
INSERT INTO incidents (incident_id, opened_at, asset_id, type, severity, status) VALUES (1024, '2025-08-22 14:00:00', 1, 'Exfiltración', 'Media', 'Cerrado');
INSERT INTO incidents (incident_id, opened_at, asset_id, type, severity, status) VALUES (1025, '2025-08-22 23:00:00', 5, 'Ingeniería Social', 'Media', 'Abierto');
INSERT INTO incidents (incident_id, opened_at, asset_id, type, severity, status) VALUES (1026, '2025-08-23 05:00:00', 6, 'DDoS', 'Media', 'En análisis');
INSERT INTO incidents (incident_id, opened_at, asset_id, type, severity, status) VALUES (1027, '2025-08-23 09:00:00', 5, 'DDoS', 'Media', 'Abierto');
INSERT INTO incidents (incident_id, opened_at, asset_id, type, severity, status) VALUES (1028, '2025-08-23 17:00:00', 2, 'DDoS', 'Alta', 'En análisis');
INSERT INTO incidents (incident_id, opened_at, asset_id, type, severity, status) VALUES (1029, '2025-08-23 21:00:00', 7, 'Intrusión', 'Alta', 'En análisis');
INSERT INTO incidents (incident_id, opened_at, asset_id, type, severity, status) VALUES (1030, '2025-08-24 04:00:00', 11, 'Ingeniería Social', 'Baja', 'Abierto');
INSERT INTO incidents (incident_id, opened_at, asset_id, type, severity, status) VALUES (1031, '2025-08-24 09:00:00', 3, 'Fuerza Bruta', 'Media', 'Abierto');
-- vulns (20 filas)
INSERT INTO vulns (vuln_id, asset_id, scanner, cve_id, cvss, detected_at, status) VALUES (1, 2, 'Nessus', 'CVE-2024-3094', 9.8, '2025-08-05', 'Abierta');
INSERT INTO vulns (vuln_id, asset_id, scanner, cve_id, cvss, detected_at, status) VALUES (2, 3, 'OpenVAS', 'CVE-2023-4966', 9.8, '2025-08-06', 'Mitigada');
INSERT INTO vulns (vuln_id, asset_id, scanner, cve_id, cvss, detected_at, status) VALUES (3, 4, 'Nessus', 'CVE-2021-41773', 7.5, '2025-08-07', 'Abierta');
INSERT INTO vulns (vuln_id, asset_id, scanner, cve_id, cvss, detected_at, status) VALUES (4, 5, 'Nessus', 'CVE-2022-22965', 9.8, '2025-08-08', 'Abierta');
INSERT INTO vulns (vuln_id, asset_id, scanner, cve_id, cvss, detected_at, status) VALUES (5, 2, 'OpenVAS', 'CVE-2020-1472', 10.0, '2025-08-09', 'En progreso');
INSERT INTO vulns (vuln_id, asset_id, scanner, cve_id, cvss, detected_at, status) VALUES (6, 9, 'Nessus', 'CVE-2021-34527', 8.8, '2025-08-10', 'Abierta');
INSERT INTO vulns (vuln_id, asset_id, scanner, cve_id, cvss, detected_at, status) VALUES (7, 7, 'OpenVAS', 'CVE-2024-3094', 9.8, '2025-08-10', 'Mitigada');
INSERT INTO vulns (vuln_id, asset_id, scanner, cve_id, cvss, detected_at, status) VALUES (8, 1, 'OpenVAS', 'CVE-2019-0708', 9.8, '2025-08-11', 'Cerrada');
INSERT INTO vulns (vuln_id, asset_id, scanner, cve_id, cvss, detected_at, status) VALUES (9, 12, 'Nessus', 'CVE-2018-13379', 9.8, '2025-08-12', 'Abierta');
INSERT INTO vulns (vuln_id, asset_id, scanner, cve_id, cvss, detected_at, status) VALUES (10, 3, 'Nessus', 'CVE-2022-37434', 7.8, '2025-08-13', 'En progreso');
INSERT INTO vulns (vuln_id, asset_id, scanner, cve_id, cvss, detected_at, status) VALUES (11, 10, 'OpenVAS', 'CVE-2021-26855', 9.1, '2025-08-13', 'Abierta');
INSERT INTO vulns (vuln_id, asset_id, scanner, cve_id, cvss, detected_at, status) VALUES (12, 11, 'Nessus', 'CVE-2020-0796', 10.0, '2025-08-14', 'Abierta');
INSERT INTO vulns (vuln_id, asset_id, scanner, cve_id, cvss, detected_at, status) VALUES (13, 6, 'OpenVAS', 'CVE-2023-23397', 9.8, '2025-08-15', 'Mitigada');
INSERT INTO vulns (vuln_id, asset_id, scanner, cve_id, cvss, detected_at, status) VALUES (14, 5, 'OpenVAS', 'CVE-2022-30190', 7.8, '2025-08-15', 'Abierta');
INSERT INTO vulns (vuln_id, asset_id, scanner, cve_id, cvss, detected_at, status) VALUES (15, 8, 'Nessus', 'CVE-2019-19781', 9.8, '2025-08-16', 'En progreso');
INSERT INTO vulns (vuln_id, asset_id, scanner, cve_id, cvss, detected_at, status) VALUES (16, 4, 'OpenVAS', 'CVE-2021-44228', 10.0, '2025-08-16', 'Mitigada');
INSERT INTO vulns (vuln_id, asset_id, scanner, cve_id, cvss, detected_at, status) VALUES (17, 2, 'Nessus', 'CVE-2020-0601', 8.1, '2025-08-17', 'Abierta');
INSERT INTO vulns (vuln_id, asset_id, scanner, cve_id, cvss, detected_at, status) VALUES (18, 7, 'OpenVAS', 'CVE-2024-6387', 8.0, '2025-08-17', 'Abierta');
INSERT INTO vulns (vuln_id, asset_id, scanner, cve_id, cvss, detected_at, status) VALUES (19, 12, 'Nessus', 'CVE-2023-27997', 9.8, '2025-08-18', 'Abierta');
INSERT INTO vulns (vuln_id, asset_id, scanner, cve_id, cvss, detected_at, status) VALUES (20, 9, 'OpenVAS', 'CVE-2022-22954', 9.8, '2025-08-18', 'En progreso');
-- tickets (31 filas)
INSERT INTO tickets (ticket_id, incident_id, assigned_to, priority, status, opened_at, closed_at) VALUES (5001, 1001, 'Analista 1', 'Alta', 'Abierto', '2025-08-12 10:30:00', NULL);
INSERT INTO tickets (ticket_id, incident_id, assigned_to, priority, status, opened_at, closed_at) VALUES (5002, 1002, 'Analista 2', 'Media', 'Cerrado', '2025-08-13 09:45:00', '2025-08-13 12:15:00');
INSERT INTO tickets (ticket_id, incident_id, assigned_to, priority, status, opened_at, closed_at) VALUES (5003, 1003, 'Analista 3', 'Crítica', 'En curso', '2025-08-14 17:00:00', NULL);
INSERT INTO tickets (ticket_id, incident_id, assigned_to, priority, status, opened_at, closed_at) VALUES (5004, 1004, 'Analista 1', 'Alta', 'Abierto', '2025-08-15 11:35:00', NULL);
INSERT INTO tickets (ticket_id, incident_id, assigned_to, priority, status, opened_at, closed_at) VALUES (5005, 1005, 'Analista 2', 'Alta', 'Abierto', '2025-08-16 14:30:00', NULL);
INSERT INTO tickets (ticket_id, incident_id, assigned_to, priority, status, opened_at, closed_at) VALUES (5006, 1006, 'Analista 4', 'Media', 'Cerrado', '2025-08-17 08:10:00', '2025-08-17 10:40:00');
INSERT INTO tickets (ticket_id, incident_id, assigned_to, priority, status, opened_at, closed_at) VALUES (5007, 1007, 'Analista 2', 'Alta', 'Abierto', '2025-08-18 11:20:00', NULL);
INSERT INTO tickets (ticket_id, incident_id, assigned_to, priority, status, opened_at, closed_at) VALUES (5008, 1008, 'Analista 3', 'Media', 'En curso', '2025-08-18 14:58:00', NULL);
INSERT INTO tickets (ticket_id, incident_id, assigned_to, priority, status, opened_at, closed_at) VALUES (5009, 1009, 'Analista 1', 'Alta', 'En curso', '2025-08-18 20:21:00', NULL);
INSERT INTO tickets (ticket_id, incident_id, assigned_to, priority, status, opened_at, closed_at) VALUES (5010, 1010, 'Analista 4', 'Media', 'Cerrado', '2025-08-19 06:03:00', '2025-08-21 02:54:00');
INSERT INTO tickets (ticket_id, incident_id, assigned_to, priority, status, opened_at, closed_at) VALUES (5011, 1011, 'Analista 4', 'Crítica', 'Abierto', '2025-08-19 08:55:00', NULL);
INSERT INTO tickets (ticket_id, incident_id, assigned_to, priority, status, opened_at, closed_at) VALUES (5012, 1012, 'Analista 4', 'Baja', 'Abierto', '2025-08-19 14:12:00', NULL);
INSERT INTO tickets (ticket_id, incident_id, assigned_to, priority, status, opened_at, closed_at) VALUES (5013, 1013, 'Analista 1', 'Media', 'Abierto', '2025-08-19 20:25:00', NULL);
INSERT INTO tickets (ticket_id, incident_id, assigned_to, priority, status, opened_at, closed_at) VALUES (5014, 1014, 'Analista 3', 'Alta', 'En curso', '2025-08-20 02:05:00', NULL);
INSERT INTO tickets (ticket_id, incident_id, assigned_to, priority, status, opened_at, closed_at) VALUES (5015, 1015, 'Analista 4', 'Media', 'Abierto', '2025-08-20 09:23:00', NULL);
INSERT INTO tickets (ticket_id, incident_id, assigned_to, priority, status, opened_at, closed_at) VALUES (5016, 1016, 'Analista 3', 'Baja', 'En curso', '2025-08-20 17:24:00', NULL);
INSERT INTO tickets (ticket_id, incident_id, assigned_to, priority, status, opened_at, closed_at) VALUES (5017, 1017, 'Analista 4', 'Media', 'Abierto', '2025-08-20 23:05:00', NULL);
INSERT INTO tickets (ticket_id, incident_id, assigned_to, priority, status, opened_at, closed_at) VALUES (5018, 1018, 'Analista 1', 'Crítica', 'En curso', '2025-08-21 05:06:00', NULL);
INSERT INTO tickets (ticket_id, incident_id, assigned_to, priority, status, opened_at, closed_at) VALUES (5019, 1019, 'Analista 1', 'Alta', 'Cerrado', '2025-08-21 10:48:00', '2025-08-23 07:58:00');
INSERT INTO tickets (ticket_id, incident_id, assigned_to, priority, status, opened_at, closed_at) VALUES (5020, 1020, 'Analista 1', 'Alta', 'Cerrado', '2025-08-21 16:31:00', '2025-08-22 03:15:00');
INSERT INTO tickets (ticket_id, incident_id, assigned_to, priority, status, opened_at, closed_at) VALUES (5021, 1021, 'Analista 1', 'Media', 'Abierto', '2025-08-21 21:12:00', NULL);
INSERT INTO tickets (ticket_id, incident_id, assigned_to, priority, status, opened_at, closed_at) VALUES (5022, 1022, 'Analista 3', 'Baja', 'En curso', '2025-08-22 04:38:00', NULL);
INSERT INTO tickets (ticket_id, incident_id, assigned_to, priority, status, opened_at, closed_at) VALUES (5023, 1023, 'Analista 3', 'Media', 'En curso', '2025-08-22 11:33:00', NULL);
INSERT INTO tickets (ticket_id, incident_id, assigned_to, priority, status, opened_at, closed_at) VALUES (5024, 1024, 'Analista 2', 'Media', 'Abierto', '2025-08-22 15:26:00', NULL);
INSERT INTO tickets (ticket_id, incident_id, assigned_to, priority, status, opened_at, closed_at) VALUES (5025, 1025, 'Analista 4', 'Media', 'Cerrado', '2025-08-22 23:35:00', '2025-08-23 14:47:00');
INSERT INTO tickets (ticket_id, incident_id, assigned_to, priority, status, opened_at, closed_at) VALUES (5026, 1026, 'Analista 3', 'Baja', 'Cerrado', '2025-08-23 05:50:00', '2025-08-24 00:20:00');
INSERT INTO tickets (ticket_id, incident_id, assigned_to, priority, status, opened_at, closed_at) VALUES (5027, 1027, 'Analista 4', 'Baja', 'En curso', '2025-08-23 09:29:00', NULL);
INSERT INTO tickets (ticket_id, incident_id, assigned_to, priority, status, opened_at, closed_at) VALUES (5028, 1028, 'Analista 2', 'Alta', 'Cerrado', '2025-08-23 17:49:00', '2025-08-24 08:55:00');
INSERT INTO tickets (ticket_id, incident_id, assigned_to, priority, status, opened_at, closed_at) VALUES (5029, 1029, 'Analista 1', 'Crítica', 'Abierto', '2025-08-23 22:05:00', NULL);
INSERT INTO tickets (ticket_id, incident_id, assigned_to, priority, status, opened_at, closed_at) VALUES (5030, 1030, 'Analista 1', 'Alta', 'Cerrado', '2025-08-24 05:06:00', '2025-08-25 23:11:00');
INSERT INTO tickets (ticket_id, incident_id, assigned_to, priority, status, opened_at, closed_at) VALUES (5031, 1031, 'Analista 2', 'Media', 'Cerrado', '2025-08-24 09:54:00', '2025-08-25 17:50:00');
-- network_logs (100 filas)
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (1, '2025-08-12 22:20:00', '10.10.2.72', 587, '10.10.0.30', 5000, 'TCP', 'ALLOW', 22002);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (2, '2025-08-14 17:24:00', '10.10.3.104', 443, '10.10.0.60', 445, 'UDP', 'DENY', 2473);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (3, '2025-08-13 03:44:00', '10.10.3.58', 445, '10.10.2.21', 5353, 'TCP', 'ALLOW', 18982);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (4, '2025-08-13 18:07:00', '10.10.3.188', 1433, '10.10.1.11', 5000, 'UDP', 'ALLOW', 1307);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (5, '2025-08-13 09:28:00', '10.10.2.229', 25, '10.10.254.1', 587, 'UDP', 'DENY', 8832);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (6, '2025-08-13 23:23:00', '185.199.110.153', 443, '10.10.0.50', 1433, 'UDP', 'ALLOW', 48595);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (7, '2025-08-14 02:36:00', '185.199.110.153', 5060, '10.10.254.1', 110, 'UDP', 'DENY', 1061);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (8, '2025-08-14 17:41:00', '10.10.1.4', 5060, '10.10.254.1', 445, 'UDP', 'DENY', 26597);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (9, '2025-08-13 00:35:00', '181.30.55.200', 3306, '10.10.254.1', 135, 'UDP', 'ALLOW', 9308);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (10, '2025-08-15 02:33:00', '201.231.155.44', 135, '10.10.0.30', 25, 'TCP', 'ALLOW', 49256);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (11, '2025-08-14 02:48:00', '170.51.44.12', 8443, '10.10.0.40', 5000, 'TCP', 'DENY', 14026);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (12, '2025-08-14 19:21:00', '10.10.1.41', 25, '10.10.3.31', 110, 'UDP', 'DENY', 23639);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (13, '2025-08-14 00:54:00', '201.231.155.44', 22, '10.10.2.21', 80, 'TCP', 'ALLOW', 8150);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (14, '2025-08-14 04:50:00', '10.10.0.5', 21, '10.10.1.11', 587, 'TCP', 'ALLOW', 246);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (15, '2025-08-13 08:44:00', '10.10.2.63', 5353, '10.10.0.70', 53, 'UDP', 'ALLOW', 40382);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (16, '2025-08-13 11:58:00', '10.10.2.29', 587, '10.10.254.1', 5000, 'UDP', 'DENY', 43625);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (17, '2025-08-14 05:29:00', '10.10.254.62', 3389, '10.10.0.30', 445, 'UDP', 'DENY', 48965);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (18, '2025-08-13 17:01:00', '10.10.2.128', 587, '10.10.254.1', 80, 'TCP', 'ALLOW', 1346);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (19, '2025-08-15 03:09:00', '10.10.0.116', 22, '10.10.254.1', 587, 'UDP', 'DENY', 5570);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (20, '2025-08-14 22:28:00', '45.83.192.77', 1433, '10.10.254.1', 25, 'UDP', 'ALLOW', 46616);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (21, '2025-08-13 05:31:00', '10.10.1.131', 5353, '10.10.2.21', 5353, 'TCP', 'ALLOW', 28713);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (22, '2025-08-12 22:14:00', '10.10.254.224', 5000, '10.10.0.30', 443, 'TCP', 'DENY', 38599);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (23, '2025-08-13 12:53:00', '103.216.61.75', 5353, '10.10.254.1', 3389, 'UDP', 'ALLOW', 40585);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (24, '2025-08-12 11:17:00', '10.10.2.240', 25, '10.10.0.70', 3389, 'UDP', 'ALLOW', 26410);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (25, '2025-08-12 18:59:00', '10.10.3.187', 22, '10.10.0.60', 5000, 'UDP', 'DENY', 1774);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (26, '2025-08-13 14:43:00', '170.51.44.12', 587, '10.10.0.50', 5060, 'UDP', 'ALLOW', 1842);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (27, '2025-08-15 03:41:00', '200.58.120.10', 3306, '10.10.0.30', 3306, 'TCP', 'DENY', 11875);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (28, '2025-08-13 18:09:00', '181.30.55.200', 123, '10.10.0.70', 123, 'UDP', 'ALLOW', 7198);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (29, '2025-08-13 18:16:00', '103.216.61.75', 3306, '10.10.0.60', 22, 'UDP', 'DENY', 12223);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (30, '2025-08-13 11:28:00', '170.51.44.12', 22, '10.10.0.10', 3306, 'UDP', 'ALLOW', 16522);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (31, '2025-08-13 20:40:00', '170.51.44.12', 5060, '10.10.1.11', 443, 'UDP', 'ALLOW', 46800);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (32, '2025-08-15 03:47:00', '185.199.110.153', 3306, '10.10.0.10', 110, 'TCP', 'ALLOW', 20920);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (33, '2025-08-14 11:44:00', '103.216.61.75', 21, '10.10.0.10', 3389, 'UDP', 'ALLOW', 8794);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (34, '2025-08-14 01:25:00', '10.10.2.27', 80, '10.10.0.10', 1433, 'UDP', 'ALLOW', 29164);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (35, '2025-08-14 11:07:00', '103.216.61.75', 22, '10.10.0.30', 5353, 'UDP', 'ALLOW', 18629);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (36, '2025-08-14 02:04:00', '103.216.61.75', 25, '10.10.1.11', 123, 'UDP', 'ALLOW', 31256);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (37, '2025-08-12 13:01:00', '103.216.61.75', 80, '10.10.254.1', 80, 'UDP', 'ALLOW', 26681);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (38, '2025-08-13 14:16:00', '181.30.55.200', 22, '10.10.3.31', 110, 'UDP', 'DENY', 45721);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (39, '2025-08-15 02:54:00', '103.216.61.75', 443, '10.10.0.30', 5353, 'UDP', 'ALLOW', 40368);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (40, '2025-08-14 06:46:00', '10.10.1.99', 135, '10.10.3.31', 587, 'TCP', 'DENY', 4820);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (41, '2025-08-15 04:35:00', '170.51.44.12', 3306, '10.10.0.40', 21, 'UDP', 'ALLOW', 13443);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (42, '2025-08-14 06:14:00', '10.10.2.153', 5353, '10.10.3.31', 8080, 'UDP', 'ALLOW', 29789);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (43, '2025-08-14 01:31:00', '10.10.254.225', 445, '10.10.0.70', 445, 'TCP', 'ALLOW', 21739);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (44, '2025-08-12 22:36:00', '10.10.3.94', 110, '10.10.2.21', 3306, 'TCP', 'DENY', 17059);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (45, '2025-08-13 12:13:00', '10.10.2.145', 5000, '10.10.0.30', 123, 'UDP', 'ALLOW', 5989);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (46, '2025-08-14 07:18:00', '10.10.0.140', 80, '10.10.254.1', 1433, 'UDP', 'DENY', 7845);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (47, '2025-08-12 17:19:00', '10.10.0.232', 80, '10.10.1.12', 3306, 'TCP', 'ALLOW', 29415);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (48, '2025-08-13 08:30:00', '10.10.254.22', 22, '10.10.0.60', 445, 'UDP', 'DENY', 3546);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (49, '2025-08-14 05:44:00', '10.10.254.206', 1433, '10.10.1.11', 5353, 'UDP', 'DENY', 13285);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (50, '2025-08-14 10:59:00', '170.51.44.12', 3306, '10.10.3.31', 587, 'UDP', 'ALLOW', 37260);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (51, '2025-08-13 18:30:00', '10.10.1.10', 53, '10.10.1.11', 443, 'UDP', 'ALLOW', 23329);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (52, '2025-08-14 22:10:00', '185.199.110.153', 123, '10.10.0.50', 135, 'UDP', 'DENY', 38686);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (53, '2025-08-12 22:55:00', '170.51.44.12', 5060, '10.10.254.1', 22, 'UDP', 'ALLOW', 4040);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (54, '2025-08-14 05:38:00', '10.10.2.101', 80, '10.10.0.40', 80, 'UDP', 'DENY', 17490);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (55, '2025-08-14 00:44:00', '181.30.55.200', 5000, '10.10.0.40', 5060, 'TCP', 'ALLOW', 27512);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (56, '2025-08-15 05:45:00', '45.83.192.77', 443, '10.10.0.70', 5000, 'TCP', 'ALLOW', 3307);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (57, '2025-08-12 21:45:00', '10.10.254.114', 53, '10.10.3.31', 53, 'UDP', 'ALLOW', 18928);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (58, '2025-08-14 09:27:00', '103.216.61.75', 53, '10.10.0.60', 5060, 'TCP', 'ALLOW', 34951);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (59, '2025-08-13 12:07:00', '10.10.254.12', 135, '10.10.0.30', 22, 'TCP', 'DENY', 46392);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (60, '2025-08-15 01:52:00', '185.199.110.153', 135, '10.10.0.10', 5000, 'TCP', 'DENY', 16819);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (61, '2025-08-15 05:31:00', '201.231.155.44', 5000, '10.10.0.50', 1433, 'UDP', 'ALLOW', 37299);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (62, '2025-08-14 08:58:00', '10.10.254.228', 3306, '10.10.254.1', 587, 'TCP', 'ALLOW', 21585);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (63, '2025-08-14 09:42:00', '10.10.1.133', 8443, '10.10.2.21', 8443, 'UDP', 'ALLOW', 6771);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (64, '2025-08-12 23:53:00', '190.3.100.45', 587, '10.10.0.30', 21, 'TCP', 'DENY', 39121);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (65, '2025-08-14 09:53:00', '10.10.2.122', 123, '10.10.1.12', 3389, 'TCP', 'DENY', 13847);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (66, '2025-08-13 07:08:00', '10.10.0.86', 587, '10.10.0.70', 135, 'UDP', 'DENY', 35949);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (67, '2025-08-14 18:06:00', '201.231.155.44', 587, '10.10.0.10', 8080, 'UDP', 'ALLOW', 28750);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (68, '2025-08-14 18:42:00', '45.83.192.77', 110, '10.10.0.70', 25, 'TCP', 'ALLOW', 39338);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (69, '2025-08-13 17:16:00', '10.10.3.190', 5353, '10.10.1.11', 80, 'UDP', 'ALLOW', 49325);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (70, '2025-08-13 19:05:00', '10.10.3.173', 1433, '10.10.0.20', 3306, 'UDP', 'ALLOW', 11043);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (71, '2025-08-13 04:50:00', '185.199.110.153', 1433, '10.10.1.11', 25, 'TCP', 'DENY', 42396);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (72, '2025-08-14 20:37:00', '10.10.2.144', 8443, '10.10.0.20', 445, 'UDP', 'DENY', 11063);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (73, '2025-08-12 13:57:00', '10.10.3.152', 110, '10.10.2.21', 53, 'UDP', 'DENY', 19169);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (74, '2025-08-12 16:59:00', '185.199.110.153', 5353, '10.10.0.10', 25, 'TCP', 'ALLOW', 35587);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (75, '2025-08-12 23:24:00', '10.10.254.46', 3389, '10.10.1.12', 5060, 'TCP', 'DENY', 4844);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (76, '2025-08-13 14:38:00', '45.83.192.77', 5060, '10.10.1.11', 135, 'TCP', 'ALLOW', 1055);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (77, '2025-08-13 14:24:00', '10.10.0.146', 5353, '10.10.0.30', 8443, 'TCP', 'DENY', 4198);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (78, '2025-08-15 01:25:00', '10.10.2.27', 80, '10.10.1.11', 443, 'TCP', 'ALLOW', 8742);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (79, '2025-08-12 14:24:00', '200.58.120.10', 5353, '10.10.2.21', 123, 'TCP', 'ALLOW', 38797);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (80, '2025-08-13 08:20:00', '190.3.100.45', 8080, '10.10.1.12', 5000, 'TCP', 'ALLOW', 38805);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (81, '2025-08-13 18:08:00', '190.3.100.45', 80, '10.10.1.12', 5353, 'UDP', 'DENY', 26697);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (82, '2025-08-14 16:59:00', '45.83.192.77', 22, '10.10.1.12', 5060, 'UDP', 'ALLOW', 8467);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (83, '2025-08-12 14:28:00', '185.199.110.153', 1433, '10.10.0.20', 1433, 'TCP', 'ALLOW', 12213);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (84, '2025-08-13 19:22:00', '181.30.55.200', 443, '10.10.1.11', 3389, 'UDP', 'DENY', 8057);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (85, '2025-08-13 06:38:00', '200.58.120.10', 3389, '10.10.0.40', 80, 'UDP', 'ALLOW', 4677);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (86, '2025-08-14 12:57:00', '10.10.2.81', 53, '10.10.3.31', 8080, 'UDP', 'ALLOW', 21873);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (87, '2025-08-14 07:12:00', '10.10.3.84', 443, '10.10.0.50', 3389, 'TCP', 'DENY', 4340);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (88, '2025-08-14 23:38:00', '10.10.2.240', 1433, '10.10.1.11', 3306, 'TCP', 'ALLOW', 11677);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (89, '2025-08-12 22:59:00', '10.10.3.184', 22, '10.10.0.60', 5060, 'TCP', 'DENY', 11354);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (90, '2025-08-15 01:00:00', '10.10.254.70', 25, '10.10.0.60', 445, 'UDP', 'DENY', 42968);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (91, '2025-08-13 13:13:00', '185.199.110.153', 1433, '10.10.1.11', 1433, 'UDP', 'DENY', 45202);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (92, '2025-08-14 07:58:00', '45.83.192.77', 80, '10.10.254.1', 110, 'TCP', 'ALLOW', 22235);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (93, '2025-08-14 06:06:00', '200.58.120.10', 443, '10.10.1.11', 135, 'UDP', 'DENY', 15074);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (94, '2025-08-13 11:26:00', '10.10.2.239', 5060, '10.10.1.12', 3389, 'TCP', 'ALLOW', 35894);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (95, '2025-08-13 18:35:00', '10.10.1.39', 587, '10.10.0.10', 445, 'TCP', 'ALLOW', 3636);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (96, '2025-08-14 14:43:00', '10.10.0.68', 25, '10.10.0.50', 135, 'UDP', 'ALLOW', 6411);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (97, '2025-08-15 06:06:00', '170.51.44.12', 5353, '10.10.254.1', 445, 'TCP', 'DENY', 35280);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (98, '2025-08-14 04:20:00', '170.51.44.12', 135, '10.10.0.10', 3389, 'TCP', 'ALLOW', 27325);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (99, '2025-08-13 22:44:00', '103.216.61.75', 25, '10.10.2.21', 22, 'TCP', 'ALLOW', 4364);
INSERT INTO network_logs (log_id, ts, src_ip, src_port, dst_ip, dst_port, protocol, action, bytes) VALUES (100, '2025-08-14 03:15:00', '10.10.1.212', 53, '10.10.0.60', 1433, 'UDP', 'DENY', 46725);
