import sys
from pydantic import BaseModel
from datetime import datetime

if sys.version_info >= (3, 8):
    from typing import Optional, List, Dict, Any, Literal
else:
    from typing import Optional, List, Dict, Any
    from typing_extensions import Literal

class DecisionEvent(BaseModel):
    event_id: str
    event_type: Literal[
        "plan_created", "step_started", "step_committed",
        "decision_point", "branch_created", "branch_committed",
        "branch_abandoned", "rewind", "validation_result",
        "plan_modified", "mode_switch"
    ]
    timestamp: datetime
    plan_version: int
    triggered_by: Literal["auto", "user"]
    step_id: Optional[str] = None
    branch_path: str = "main"
    git_commit_sha: Optional[str] = None

class PlanCreatedEvent(DecisionEvent):
    event_type: Literal["plan_created"] = "plan_created"
    research_question: str
    total_phases: int
    total_steps: int

class StepStartedEvent(DecisionEvent):
    event_type: Literal["step_started"] = "step_started"
    module_id: str
    config_summary: Optional[str] = None

class StepCommittedEvent(DecisionEvent):
    event_type: Literal["step_committed"] = "step_committed"
    output_summary: str
    variables: Optional[Dict[str, Any]] = None
    validation_results: Optional[Dict[str, int]] = None
    researcher_note: Optional[str] = None

class DecisionPointEvent(DecisionEvent):
    event_type: Literal["decision_point"] = "decision_point"
    reason: str
    options: List[str]

class BranchCreatedEvent(DecisionEvent):
    event_type: Literal["branch_created"] = "branch_created"
    branch_group_id: str
    branches: List[Dict[str, str]]
    fork_reason: str

class BranchCommittedEvent(DecisionEvent):
    event_type: Literal["branch_committed"] = "branch_committed"
    branch_id: str
    branch_group_id: str
    rationale: str
    comparison_summary: Optional[Dict[str, Any]] = None

class BranchAbandonedEvent(DecisionEvent):
    event_type: Literal["branch_abandoned"] = "branch_abandoned"
    branch_id: str
    branch_group_id: str
    reason: str
    failure_summary: Optional[Dict[str, Any]] = None
    key_learning: Optional[str] = None

class RewindEvent(DecisionEvent):
    event_type: Literal["rewind"] = "rewind"
    from_step_id: str
    to_step_id: str
    reason: str
    preserved_path_summary: Optional[str] = None

class ValidationResultEvent(DecisionEvent):
    event_type: Literal["validation_result"] = "validation_result"
    checks: List[Dict[str, str]]
    pass_count: int
    warn_count: int
    fail_count: int

class PlanModifiedEvent(DecisionEvent):
    event_type: Literal["plan_modified"] = "plan_modified"
    change_type: str
    affected_steps: List[str]
    reason: str

class ModeSwitchEvent(DecisionEvent):
    event_type: Literal["mode_switch"] = "mode_switch"
    from_mode: str
    to_mode: str
