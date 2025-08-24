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
pub struct NavParentVsValueInst {
    pub _root: SharedType<NavParentVsValueInst>,
    pub _parent: SharedType<NavParentVsValueInst>,
    pub _self: SharedType<Self>,
    s1: RefCell<String>,
    child: RefCell<OptRc<NavParentVsValueInst_ChildObj>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NavParentVsValueInst {
    type Root = NavParentVsValueInst;
    type Parent = NavParentVsValueInst;

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
        *self_rc.s1.borrow_mut() = bytes_to_str(&_io.read_bytes_term(124, false, true, true)?.into(), "UTF-8")?;
        let t = Self::read_into::<_, NavParentVsValueInst_ChildObj>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.child.borrow_mut() = t;
        Ok(())
    }
}
impl NavParentVsValueInst {
}
impl NavParentVsValueInst {
    pub fn s1(&self) -> Ref<'_, String> {
        self.s1.borrow()
    }
}
impl NavParentVsValueInst {
    pub fn child(&self) -> Ref<'_, OptRc<NavParentVsValueInst_ChildObj>> {
        self.child.borrow()
    }
}
impl NavParentVsValueInst {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NavParentVsValueInst_ChildObj {
    pub _root: SharedType<NavParentVsValueInst>,
    pub _parent: SharedType<NavParentVsValueInst>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
    f_do_something: Cell<bool>,
    do_something: RefCell<bool>,
}
impl KStruct for NavParentVsValueInst_ChildObj {
    type Root = NavParentVsValueInst;
    type Parent = NavParentVsValueInst;

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
        Ok(())
    }
}
impl NavParentVsValueInst_ChildObj {
    pub fn do_something(
        &self
    ) -> KResult<Ref<'_, bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_do_something.get() {
            return Ok(self.do_something.borrow());
        }
        self.f_do_something.set(true);
        *self.do_something.borrow_mut() = (if *_prc.as_ref().unwrap().s1() == "foo".to_string() { true } else { false }) as bool;
        Ok(self.do_something.borrow())
    }
}
impl NavParentVsValueInst_ChildObj {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
