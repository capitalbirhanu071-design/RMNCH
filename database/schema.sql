-- RMNCH Quantification System Schema

CREATE TABLE quantification_exercises (
    id SERIAL PRIMARY KEY,

    quantification_name VARCHAR(255) NOT NULL,
    program_area VARCHAR(100) NOT NULL,
    scenario_name VARCHAR(100),

    forecast_start_period DATE NOT NULL,
    forecast_end_period DATE NOT NULL,

    supply_plan_start_period DATE,
    supply_plan_end_period DATE,

    planning_frequency VARCHAR(20),

    geographic_scope VARCHAR(100),

    currency_code VARCHAR(10),

    version_number INTEGER DEFAULT 1,

    status VARCHAR(50) DEFAULT 'Draft',

    created_by VARCHAR(100),
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    approved_by VARCHAR(100),
    approval_date TIMESTAMP,

    notes TEXT
);
