// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#![allow(unused_imports)]
#![allow(non_snake_case)]
#![allow(non_camel_case_types)]
#![allow(irrefutable_let_patterns)]
#![allow(unused_comparisons)]

extern crate kaitai;
use kaitai::*;
use std::convert::{TryFrom, TryInto};
use std::cell::{Ref, Cell, RefCell};
use std::rc::{Rc, Weak};

#[derive(Default, Debug, Clone)]
pub struct NavParentRecursive {
    pub _root: SharedType<NavParentRecursive>,
    pub _parent: SharedType<NavParentRecursive>,
    pub _self: SharedType<Self>,
    value: RefCell<u8>,
    next: RefCell<OptRc<NavParentRecursive>>,
    _io: RefCell<BytesReader>,
    f_parent_value: Cell<bool>,
    parent_value: RefCell<u8>,
}
impl KStruct for NavParentRecursive {
    type Root = NavParentRecursive;
    type Parent = NavParentRecursive;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.value.borrow_mut() = _io.read_u1()?.into();
        if ((*self_rc.value() as u8) == (255 as u8)) {
            let t = Self::read_into::<_, NavParentRecursive>(&*_io, Some(self_rc._root.clone()), None)?.into();
            *self_rc.next.borrow_mut() = t;
        }
        Ok(())
    }
}
impl NavParentRecursive {
    pub fn parent_value(
        &self
    ) -> KResult<Ref<u8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_parent_value.get() {
            return Ok(self.parent_value.borrow());
        }
        self.f_parent_value.set(true);
        if ((*self.value() as u8) != (255 as u8)) {
            *self.parent_value.borrow_mut() = (*Into::<OptRc<NavParentRecursive>>::into(&_prc.as_ref().unwrap()).value()) as u8;
        }
        Ok(self.parent_value.borrow())
    }
}
impl NavParentRecursive {
    pub fn value(&self) -> Ref<u8> {
        self.value.borrow()
    }
}
impl NavParentRecursive {
    pub fn next(&self) -> Ref<OptRc<NavParentRecursive>> {
        self.next.borrow()
    }
}
impl NavParentRecursive {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
