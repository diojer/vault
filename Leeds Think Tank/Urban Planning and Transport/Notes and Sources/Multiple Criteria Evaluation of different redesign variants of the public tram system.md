#transport #economics #policy 
Written by Maja Kiba Janiak and Jacek Zak, 2nd July 2014. Accessed on the 23/03/2024, available [[1-s2.0-S2352146514002117-main.pdf|here]].
# Introduction
- Growing wealth of societies and consequent access to passenger cars is responsible for the significant increase of motorisation index and fall in public transport use.
	- This should be remedied and as such we must modify public transport to address this issue.
- Redesign may include:
	- Route changes
	- Relocating stops
	- Construction of multi-modal transfer terminals
	- fleet reassignment
	- Better coordination of schedules, etc.,
- Many methodologies can carry out an evaluation of a redesign:
	- Cost-benefit analysis,
	- Cost-effectiveness analysis,
	- Regional economic impact,
	- Environmental impact
	- Multiple Criteria Analysis
- Major groups of stakeholders include:
	- Local authorities
	- Operators of public transport
	- Passengers
	- Local community
- These groups are often opposed in interests and a compromise must be found. As such, an MCA analysis (often called MCDM/A) is gaining popularity
# Multiple Criteria Decision Making/Aiding in Public Transport
- MCDM/A is about solving multiple criteria decision problems, i.e., situations where, with a set of actions/variants/solutions $V$ and a consistent family of criteria $F$, the decision maker tends to:
	- Determine the best subset in $V$ according to $F$ (choice problem),
	- Divide $V$ into subsets representing specific classes of actions/variants/solutions according to classification rules (sorting problem)
	- Rank actions/variants/solutions in $V$ from best to worst, according to $F$ (ranking problem).
- The methodology distinguishes between a decision maker (DM), an analyst, and an intervener.
- There are three different MCDM/A methodologies developed to solve the hard problem of processing the interests of stakeholders and the interaction of these interests.
	1. American-inspired methods based on utility functions,
		- Such as Analytic Hierarchy Process (AHP)
		- UTilités Additives (UTA)
	2. European methods based on outranking,
		- Electre I-IV,
		- Promothee I and II
	3. Methods focused on dialogue and interaction with the DM
		- STEM
		- GDF
		- VIG
		- Paper does not go into detail on where these acronyms come from.
## Electre III/IV and AHP
- Paper will compare AHP and Electre III/IV.
	- AHP is a mathematical algorithm to solve complex multiple criteria, hierarchical decision problems.
		- Based on pair-wise comparisons, i.e., each element is compared against each other element as a couple.
		- Grading scale of 1-9
			- Each grading number represents *relative* strength of compared element against another
			- The value characterising the less important element is the inverse of the more important element, e.g., (1/9, 9) (1/5, 5)
		- Some complicated calculations which result in a ranking of the list of variants from the best to worst.
	- Electre III/IV
		- Based on outranking
		- Orders finite set of variants from best to worst
		- Steps:
			1. Define set of variants $V$, criteria $F$ and the DM's preference model.
			2. Preferential information is defined in the form of criteria weights ($w$), indifference ($q$), preference ($p$), and veto ($v$)
			3. Some complicated maths terms which I do not yet understand
# The Decision Problem
- Dominating form of travel is bus travel
	- 85% of vehicle kilometres covered, 36 lines
- Tram subsystem is underdeveloped
	- Only 3 lines
	- Trams are very old
	- No accessibility support
	- Tram routes are located at some distance from major housing estates
	- Low availability of tram cars
## Constructing Variants
- Original variant, $V0$, represents existing tramline
- Following variants are adjusted in ways to meet different stakeholder demands
	- e.g., V1 goes near housing estates
	- V2 goes near housing estates and hospitals
	- V3 tries to combine V1 and V2 and go further to make trams better quality and decrease headways
	- V4 proposes an additional route
	- etc
## Defining the family of Criteria
- To see this, best to just look at the underlying document - pages 6-7.
# Results
- AHP and Electre III/IV give different outcomes
	- This is mainly due to how preference and indifference are determined:
		- In AHP, utility for each criteria is calculated, and indifference is the case whenever two utilities are equal
		- In Electre III/IV, indifference is calculated with a criteria's given indifference value.
- The variant that was given the lowest score in both instances, V9, was the one that was chosen by the city/town hall.
# Conclusion
- AHP
	- Allows the DM to see the interplay between all variants and criteria
	- Time consuming and difficult to apply for a large number of variants and criteria
	- Pair-wise comparisons is labor intensive and error prone
- Electre III/IV
	- Less flexible
	- Sub-criteria must be aggregated and expressed as normalised variables
	- Adds new depth by introducing preference, indifference and incomparability.
	- Rankings are ordinal, so distances between rankings cannot be assessed
