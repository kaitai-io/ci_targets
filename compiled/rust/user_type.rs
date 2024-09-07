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
pub struct UserType {
    pub _root: SharedType<UserType>,
    pub _parent: SharedType<UserType>,
    pub _self: SharedType<Self>,
    one: RefCell<OptRc<UserType_Header>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for UserType {
    type Root = UserType;
    type Parent = UserType;

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
        let t = Self::read_into::<_, UserType_Header>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.one.borrow_mut() = t;
        Ok(())
    }
}
impl UserType {
}
impl UserType {
    pub fn one(&self) -> Ref<OptRc<UserType_Header>> {
        self.one.borrow()
    }
}
impl UserType {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct UserType_Header {
    pub _root: SharedType<UserType>,
    pub _parent: SharedType<UserType>,
    pub _self: SharedType<Self>,
    width: RefCell<u32>,
    height: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for UserType_Header {
    type Root = UserType;
    type Parent = UserType;

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
        *self_rc.width.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.height.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl UserType_Header {
}
impl UserType_Header {
    pub fn width(&self) -> Ref<u32> {
        self.width.borrow()
    }
}
impl UserType_Header {
    pub fn height(&self) -> Ref<u32> {
        self.height.borrow()
    }
}
impl UserType_Header {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
