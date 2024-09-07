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
pub struct DebugSwitchUser {
    pub _root: SharedType<DebugSwitchUser>,
    pub _parent: SharedType<DebugSwitchUser>,
    pub _self: SharedType<Self>,
    code: RefCell<u8>,
    data: RefCell<Option<DebugSwitchUser_Data>>,
    _io: RefCell<BytesReader>,
}
#[derive(Debug, Clone)]
pub enum DebugSwitchUser_Data {
    DebugSwitchUser_One(OptRc<DebugSwitchUser_One>),
    DebugSwitchUser_Two(OptRc<DebugSwitchUser_Two>),
}
impl From<&DebugSwitchUser_Data> for OptRc<DebugSwitchUser_One> {
    fn from(v: &DebugSwitchUser_Data) -> Self {
        if let DebugSwitchUser_Data::DebugSwitchUser_One(x) = v {
            return x.clone();
        }
        panic!("expected DebugSwitchUser_Data::DebugSwitchUser_One, got {:?}", v)
    }
}
impl From<OptRc<DebugSwitchUser_One>> for DebugSwitchUser_Data {
    fn from(v: OptRc<DebugSwitchUser_One>) -> Self {
        Self::DebugSwitchUser_One(v)
    }
}
impl From<&DebugSwitchUser_Data> for OptRc<DebugSwitchUser_Two> {
    fn from(v: &DebugSwitchUser_Data) -> Self {
        if let DebugSwitchUser_Data::DebugSwitchUser_Two(x) = v {
            return x.clone();
        }
        panic!("expected DebugSwitchUser_Data::DebugSwitchUser_Two, got {:?}", v)
    }
}
impl From<OptRc<DebugSwitchUser_Two>> for DebugSwitchUser_Data {
    fn from(v: OptRc<DebugSwitchUser_Two>) -> Self {
        Self::DebugSwitchUser_Two(v)
    }
}
impl KStruct for DebugSwitchUser {
    type Root = DebugSwitchUser;
    type Parent = DebugSwitchUser;

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
        *self_rc.code.borrow_mut() = _io.read_u1()?.into();
        match *self_rc.code() {
            1 => {
                let t = Self::read_into::<_, DebugSwitchUser_One>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                *self_rc.data.borrow_mut() = Some(t);
            }
            2 => {
                let t = Self::read_into::<_, DebugSwitchUser_Two>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                *self_rc.data.borrow_mut() = Some(t);
            }
            _ => {}
        }
        Ok(())
    }
}
impl DebugSwitchUser {
}
impl DebugSwitchUser {
    pub fn code(&self) -> Ref<u8> {
        self.code.borrow()
    }
}
impl DebugSwitchUser {
    pub fn data(&self) -> Ref<Option<DebugSwitchUser_Data>> {
        self.data.borrow()
    }
}
impl DebugSwitchUser {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct DebugSwitchUser_One {
    pub _root: SharedType<DebugSwitchUser>,
    pub _parent: SharedType<DebugSwitchUser>,
    pub _self: SharedType<Self>,
    val: RefCell<i16>,
    _io: RefCell<BytesReader>,
}
impl KStruct for DebugSwitchUser_One {
    type Root = DebugSwitchUser;
    type Parent = DebugSwitchUser;

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
        *self_rc.val.borrow_mut() = _io.read_s2le()?.into();
        Ok(())
    }
}
impl DebugSwitchUser_One {
}
impl DebugSwitchUser_One {
    pub fn val(&self) -> Ref<i16> {
        self.val.borrow()
    }
}
impl DebugSwitchUser_One {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct DebugSwitchUser_Two {
    pub _root: SharedType<DebugSwitchUser>,
    pub _parent: SharedType<DebugSwitchUser>,
    pub _self: SharedType<Self>,
    val: RefCell<u16>,
    _io: RefCell<BytesReader>,
}
impl KStruct for DebugSwitchUser_Two {
    type Root = DebugSwitchUser;
    type Parent = DebugSwitchUser;

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
        *self_rc.val.borrow_mut() = _io.read_u2le()?.into();
        Ok(())
    }
}
impl DebugSwitchUser_Two {
}
impl DebugSwitchUser_Two {
    pub fn val(&self) -> Ref<u16> {
        self.val.borrow()
    }
}
impl DebugSwitchUser_Two {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
