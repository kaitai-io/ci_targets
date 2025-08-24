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
pub struct OpaqueExternalType02Child {
    pub _root: SharedType<OpaqueExternalType02Child>,
    pub _parent: SharedType<OpaqueExternalType02Child>,
    pub _self: SharedType<Self>,
    s1: RefCell<String>,
    s2: RefCell<String>,
    s3: RefCell<OptRc<OpaqueExternalType02Child_OpaqueExternalType02ChildChild>>,
    _io: RefCell<BytesReader>,
    f_some_method: Cell<bool>,
    some_method: RefCell<bool>,
}
impl KStruct for OpaqueExternalType02Child {
    type Root = OpaqueExternalType02Child;
    type Parent = OpaqueExternalType02Child;

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
        *self_rc.s2.borrow_mut() = bytes_to_str(&_io.read_bytes_term(124, false, false, true)?.into(), "UTF-8")?;
        let t = Self::read_into::<_, OpaqueExternalType02Child_OpaqueExternalType02ChildChild>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.s3.borrow_mut() = t;
        Ok(())
    }
}
impl OpaqueExternalType02Child {
    pub fn some_method(
        &self
    ) -> KResult<Ref<'_, bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_some_method.get() {
            return Ok(self.some_method.borrow());
        }
        self.f_some_method.set(true);
        *self.some_method.borrow_mut() = (true) as bool;
        Ok(self.some_method.borrow())
    }
}
impl OpaqueExternalType02Child {
    pub fn s1(&self) -> Ref<'_, String> {
        self.s1.borrow()
    }
}
impl OpaqueExternalType02Child {
    pub fn s2(&self) -> Ref<'_, String> {
        self.s2.borrow()
    }
}
impl OpaqueExternalType02Child {
    pub fn s3(&self) -> Ref<'_, OptRc<OpaqueExternalType02Child_OpaqueExternalType02ChildChild>> {
        self.s3.borrow()
    }
}
impl OpaqueExternalType02Child {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct OpaqueExternalType02Child_OpaqueExternalType02ChildChild {
    pub _root: SharedType<OpaqueExternalType02Child>,
    pub _parent: SharedType<OpaqueExternalType02Child>,
    pub _self: SharedType<Self>,
    s3: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for OpaqueExternalType02Child_OpaqueExternalType02ChildChild {
    type Root = OpaqueExternalType02Child;
    type Parent = OpaqueExternalType02Child;

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
        if *_r.some_method()? {
            *self_rc.s3.borrow_mut() = bytes_to_str(&_io.read_bytes_term(64, true, true, true)?.into(), "UTF-8")?;
        }
        Ok(())
    }
}
impl OpaqueExternalType02Child_OpaqueExternalType02ChildChild {
}
impl OpaqueExternalType02Child_OpaqueExternalType02ChildChild {
    pub fn s3(&self) -> Ref<'_, String> {
        self.s3.borrow()
    }
}
impl OpaqueExternalType02Child_OpaqueExternalType02ChildChild {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
