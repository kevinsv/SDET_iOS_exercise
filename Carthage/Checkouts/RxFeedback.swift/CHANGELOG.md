## Master

## [2.0.0](https://github.com/kzaher/RxFeedback/releases/tag/2.0.0)

* Renames `Event` to `Mutation`.
* Removes deprecated APIs.
* Adds the most general version of feedback loop 
```swift
public func react<State, Request: Equatable, RequestID, Event>(
    requests: @escaping (State) -> [RequestID: Request],
    effects: @escaping (_ initial: Request, _ state: Observable<Request>) -> Observable<Event>
) -> (ObservableSchedulerContext<State>) -> Observable<Event> {
```
* Simpler feedback loops are now just a specialization of the general one.
* Removes hacky versions of feedback loops that existed because Swift compiler didn't generate automatic `Equality` conformance.

## [1.1.1](https://github.com/kzaher/RxFeedback/releases/tag/1.1.1)

* Fixes problem building with Carthage. #41

## [1.1.0](https://github.com/kzaher/RxFeedback/releases/tag/1.1.0)

* Xcode 10 compatbility
* Renames `Event` to `Mutation`.

## [1.0.2](https://github.com/kzaher/RxFeedback/releases/tag/1.0.3)

* Fixes problem with feedback loop termination.

## [1.0.2](https://github.com/kzaher/RxFeedback/releases/tag/1.0.2)

* Fixes duplicated plist inclusion.

## [1.0.1](https://github.com/kzaher/RxFeedback/releases/tag/1.0.1)

* Fixes leak in `Hashable` overload of `react` feedback loop.
* Shares final guard against reentrancy (if feedback loops have implementation issue and are synchronous) between all feedback loops.

## [1.0.0](https://github.com/kzaher/RxFeedback/releases/tag/1.0.0)

* Deprecates `UI.*` in favor of free methods.
* Deprecates feedback loops of the form `Driver<State> -> Driver<Event>` in favor of `Driver<State> -> Signal<Event>`.
* Adaptations for RxSwift 4.0.0.

## [0.3.3](https://github.com/kzaher/RxFeedback/releases/tag/0.3.3)

* Adds reentrancy guards to UI.bind feedback loop (Driver version).

## [0.3.2](https://github.com/kzaher/RxFeedback/releases/tag/0.3.2)

* Includes additional reentrancy checks to DEBUG builds.

## [0.3.1](https://github.com/kzaher/RxFeedback/releases/tag/0.3.1)

* Adapts UI extensions.

## [0.3.0](https://github.com/kzaher/RxFeedback/releases/tag/0.3.0)

* Improves reentrancy properties.
* Adds `ObservableSchedulerContext` and additional `system` operator overload that enables passing of scheduler to feedback loops to improve cancellation guarantees.
* Improves built in feedback loops with additional cancellation guarantees.
    * Receiving stale events by using built-in feedback loops shouldn't be possible anymore.
* Deprecates feedback loops that don't use scheduler argument.
