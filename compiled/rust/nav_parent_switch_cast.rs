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
pub struct NavParentSwitchCast {
    pub _root: SharedType<NavParentSwitchCast>,
    pub _parent: SharedType<NavParentSwitchCast>,
    pub _self: SharedType<Self>,
    main: RefCell<OptRc<NavParentSwitchCast_Foo>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NavParentSwitchCast {
    type Root = NavParentSwitchCast;
    type Parent = NavParentSwitchCast;

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
        let t = Self::read_into::<_, NavParentSwitchCast_Foo>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.main.borrow_mut() = t;
        Ok(())
    }
}
impl NavParentSwitchCast {
}
impl NavParentSwitchCast {
    pub fn main(&self) -> Ref<'_, OptRc<NavParentSwitchCast_Foo>> {
        self.main.borrow()
    }
}
impl NavParentSwitchCast {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NavParentSwitchCast_Foo {
    pub _root: SharedType<NavParentSwitchCast>,
    pub _parent: SharedType<NavParentSwitchCast>,
    pub _self: SharedType<Self>,
    buf_type: RefCell<u8>,
    flag: RefCell<u8>,
    buf: RefCell<Option<NavParentSwitchCast_Foo_Buf>>,
    _io: RefCell<BytesReader>,
    buf_raw: RefCell<Vec<u8>>,
}
#[derive(Debug, Clone)]
pub enum NavParentSwitchCast_Foo_Buf {
    NavParentSwitchCast_Foo_Zero(OptRc<NavParentSwitchCast_Foo_Zero>),
    NavParentSwitchCast_Foo_One(OptRc<NavParentSwitchCast_Foo_One>),
    Bytes(Vec<u8>),
}
impl From<&NavParentSwitchCast_Foo_Buf> for OptRc<NavParentSwitchCast_Foo_Zero> {
    fn from(v: &NavParentSwitchCast_Foo_Buf) -> Self {
        if let NavParentSwitchCast_Foo_Buf::NavParentSwitchCast_Foo_Zero(x) = v {
            return x.clone();
        }
        panic!("expected NavParentSwitchCast_Foo_Buf::NavParentSwitchCast_Foo_Zero, got {:?}", v)
    }
}
impl From<OptRc<NavParentSwitchCast_Foo_Zero>> for NavParentSwitchCast_Foo_Buf {
    fn from(v: OptRc<NavParentSwitchCast_Foo_Zero>) -> Self {
        Self::NavParentSwitchCast_Foo_Zero(v)
    }
}
impl From<&NavParentSwitchCast_Foo_Buf> for OptRc<NavParentSwitchCast_Foo_One> {
    fn from(v: &NavParentSwitchCast_Foo_Buf) -> Self {
        if let NavParentSwitchCast_Foo_Buf::NavParentSwitchCast_Foo_One(x) = v {
            return x.clone();
        }
        panic!("expected NavParentSwitchCast_Foo_Buf::NavParentSwitchCast_Foo_One, got {:?}", v)
    }
}
impl From<OptRc<NavParentSwitchCast_Foo_One>> for NavParentSwitchCast_Foo_Buf {
    fn from(v: OptRc<NavParentSwitchCast_Foo_One>) -> Self {
        Self::NavParentSwitchCast_Foo_One(v)
    }
}
impl From<&NavParentSwitchCast_Foo_Buf> for Vec<u8> {
    fn from(v: &NavParentSwitchCast_Foo_Buf) -> Self {
        if let NavParentSwitchCast_Foo_Buf::Bytes(x) = v {
            return x.clone();
        }
        panic!("expected NavParentSwitchCast_Foo_Buf::Bytes, got {:?}", v)
    }
}
impl From<Vec<u8>> for NavParentSwitchCast_Foo_Buf {
    fn from(v: Vec<u8>) -> Self {
        Self::Bytes(v)
    }
}
impl KStruct for NavParentSwitchCast_Foo {
    type Root = NavParentSwitchCast;
    type Parent = NavParentSwitchCast;

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
        *self_rc.buf_type.borrow_mut() = _io.read_u1()?.into();
        *self_rc.flag.borrow_mut() = _io.read_u1()?.into();
        match *self_rc.buf_type() {
            0 => {
                *self_rc.buf_raw.borrow_mut() = _io.read_bytes(4 as usize)?.into();
                let buf_raw = self_rc.buf_raw.borrow();
                let _t_buf_raw_io = BytesReader::from(buf_raw.clone());
                let t = Self::read_into::<BytesReader, NavParentSwitchCast_Foo_Zero>(&_t_buf_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                *self_rc.buf.borrow_mut() = Some(t);
            }
            1 => {
                *self_rc.buf_raw.borrow_mut() = _io.read_bytes(4 as usize)?.into();
                let buf_raw = self_rc.buf_raw.borrow();
                let _t_buf_raw_io = BytesReader::from(buf_raw.clone());
                let t = Self::read_into::<BytesReader, NavParentSwitchCast_Foo_One>(&_t_buf_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                *self_rc.buf.borrow_mut() = Some(t);
            }
            _ => {
                *self_rc.buf.borrow_mut() = Some(_io.read_bytes(4 as usize)?.into());
            }
        }
        Ok(())
    }
}
impl NavParentSwitchCast_Foo {
}
impl NavParentSwitchCast_Foo {
    pub fn buf_type(&self) -> Ref<'_, u8> {
        self.buf_type.borrow()
    }
}
impl NavParentSwitchCast_Foo {
    pub fn flag(&self) -> Ref<'_, u8> {
        self.flag.borrow()
    }
}
impl NavParentSwitchCast_Foo {
    pub fn buf(&self) -> Ref<'_, Option<NavParentSwitchCast_Foo_Buf>> {
        self.buf.borrow()
    }
}
impl NavParentSwitchCast_Foo {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
impl NavParentSwitchCast_Foo {
    pub fn buf_raw(&self) -> Ref<'_, Vec<u8>> {
        self.buf_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NavParentSwitchCast_Foo_Common {
    pub _root: SharedType<NavParentSwitchCast>,
    pub _parent: SharedType<KStructUnit>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
    f_flag: Cell<bool>,
    flag: RefCell<u8>,
}
impl KStruct for NavParentSwitchCast_Foo_Common {
    type Root = NavParentSwitchCast;
    type Parent = KStructUnit;

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
impl NavParentSwitchCast_Foo_Common {
    pub fn flag(
        &self
    ) -> KResult<Ref<'_, u8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_flag.get() {
            return Ok(self.flag.borrow());
        }
        self.f_flag.set(true);
        *self.flag.borrow_mut() = (*Into::<OptRc<NavParentSwitchCast_Foo>>::into(&_prc.as_ref().unwrap()._parent.get_value().borrow().upgrade().as_ref().unwrap()).flag()?) as u8;
        Ok(self.flag.borrow())
    }
}
impl NavParentSwitchCast_Foo_Common {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NavParentSwitchCast_Foo_One {
    pub _root: SharedType<NavParentSwitchCast>,
    pub _parent: SharedType<NavParentSwitchCast_Foo>,
    pub _self: SharedType<Self>,
    branch: RefCell<OptRc<NavParentSwitchCast_Foo_Common>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NavParentSwitchCast_Foo_One {
    type Root = NavParentSwitchCast;
    type Parent = NavParentSwitchCast_Foo;

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
        let t = Self::read_into::<_, NavParentSwitchCast_Foo_Common>(&*_io, Some(self_rc._root.clone()), None)?.into();
        *self_rc.branch.borrow_mut() = t;
        Ok(())
    }
}
impl NavParentSwitchCast_Foo_One {
}
impl NavParentSwitchCast_Foo_One {
    pub fn branch(&self) -> Ref<'_, OptRc<NavParentSwitchCast_Foo_Common>> {
        self.branch.borrow()
    }
}
impl NavParentSwitchCast_Foo_One {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NavParentSwitchCast_Foo_Zero {
    pub _root: SharedType<NavParentSwitchCast>,
    pub _parent: SharedType<NavParentSwitchCast_Foo>,
    pub _self: SharedType<Self>,
    branch: RefCell<OptRc<NavParentSwitchCast_Foo_Common>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NavParentSwitchCast_Foo_Zero {
    type Root = NavParentSwitchCast;
    type Parent = NavParentSwitchCast_Foo;

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
        let t = Self::read_into::<_, NavParentSwitchCast_Foo_Common>(&*_io, Some(self_rc._root.clone()), None)?.into();
        *self_rc.branch.borrow_mut() = t;
        Ok(())
    }
}
impl NavParentSwitchCast_Foo_Zero {
}
impl NavParentSwitchCast_Foo_Zero {
    pub fn branch(&self) -> Ref<'_, OptRc<NavParentSwitchCast_Foo_Common>> {
        self.branch.borrow()
    }
}
impl NavParentSwitchCast_Foo_Zero {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
