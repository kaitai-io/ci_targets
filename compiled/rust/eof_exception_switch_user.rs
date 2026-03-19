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
pub struct EofExceptionSwitchUser {
    pub _root: SharedType<EofExceptionSwitchUser>,
    pub _parent: SharedType<EofExceptionSwitchUser>,
    pub _self: SharedType<Self>,
    code: RefCell<u16>,
    data: RefCell<Option<EofExceptionSwitchUser_Data>>,
    _io: RefCell<BytesReader>,
}
#[derive(Debug, Clone)]
pub enum EofExceptionSwitchUser_Data {
    EofExceptionSwitchUser_Two(OptRc<EofExceptionSwitchUser_Two>),
    EofExceptionSwitchUser_One(OptRc<EofExceptionSwitchUser_One>),
}
impl From<&EofExceptionSwitchUser_Data> for OptRc<EofExceptionSwitchUser_Two> {
    fn from(v: &EofExceptionSwitchUser_Data) -> Self {
        if let EofExceptionSwitchUser_Data::EofExceptionSwitchUser_Two(x) = v {
            return x.clone();
        }
        panic!("expected EofExceptionSwitchUser_Data::EofExceptionSwitchUser_Two, got {:?}", v)
    }
}
impl From<OptRc<EofExceptionSwitchUser_Two>> for EofExceptionSwitchUser_Data {
    fn from(v: OptRc<EofExceptionSwitchUser_Two>) -> Self {
        Self::EofExceptionSwitchUser_Two(v)
    }
}
impl From<&EofExceptionSwitchUser_Data> for OptRc<EofExceptionSwitchUser_One> {
    fn from(v: &EofExceptionSwitchUser_Data) -> Self {
        if let EofExceptionSwitchUser_Data::EofExceptionSwitchUser_One(x) = v {
            return x.clone();
        }
        panic!("expected EofExceptionSwitchUser_Data::EofExceptionSwitchUser_One, got {:?}", v)
    }
}
impl From<OptRc<EofExceptionSwitchUser_One>> for EofExceptionSwitchUser_Data {
    fn from(v: OptRc<EofExceptionSwitchUser_One>) -> Self {
        Self::EofExceptionSwitchUser_One(v)
    }
}
impl KStruct for EofExceptionSwitchUser {
    type Root = EofExceptionSwitchUser;
    type Parent = EofExceptionSwitchUser;

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
        *self_rc.code.borrow_mut() = _io.read_u2le()?.into();
        match *self_rc.code() {
            2 => {
                let t = Self::read_into::<_, EofExceptionSwitchUser_Two>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                *self_rc.data.borrow_mut() = Some(t);
            }
            511 => {
                let t = Self::read_into::<_, EofExceptionSwitchUser_One>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                *self_rc.data.borrow_mut() = Some(t);
            }
            _ => {}
        }
        Ok(())
    }
}
impl EofExceptionSwitchUser {
}
impl EofExceptionSwitchUser {
    pub fn code(&self) -> Ref<'_, u16> {
        self.code.borrow()
    }
}
impl EofExceptionSwitchUser {
    pub fn data(&self) -> Ref<'_, Option<EofExceptionSwitchUser_Data>> {
        self.data.borrow()
    }
}
impl EofExceptionSwitchUser {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct EofExceptionSwitchUser_One {
    pub _root: SharedType<EofExceptionSwitchUser>,
    pub _parent: SharedType<EofExceptionSwitchUser>,
    pub _self: SharedType<Self>,
    val: RefCell<i16>,
    _io: RefCell<BytesReader>,
}
impl KStruct for EofExceptionSwitchUser_One {
    type Root = EofExceptionSwitchUser;
    type Parent = EofExceptionSwitchUser;

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
impl EofExceptionSwitchUser_One {
}
impl EofExceptionSwitchUser_One {
    pub fn val(&self) -> Ref<'_, i16> {
        self.val.borrow()
    }
}
impl EofExceptionSwitchUser_One {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct EofExceptionSwitchUser_Two {
    pub _root: SharedType<EofExceptionSwitchUser>,
    pub _parent: SharedType<EofExceptionSwitchUser>,
    pub _self: SharedType<Self>,
    val: RefCell<u16>,
    _io: RefCell<BytesReader>,
}
impl KStruct for EofExceptionSwitchUser_Two {
    type Root = EofExceptionSwitchUser;
    type Parent = EofExceptionSwitchUser;

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
impl EofExceptionSwitchUser_Two {
}
impl EofExceptionSwitchUser_Two {
    pub fn val(&self) -> Ref<'_, u16> {
        self.val.borrow()
    }
}
impl EofExceptionSwitchUser_Two {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
