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
pub struct SwitchRepeatExpr {
    pub _root: SharedType<SwitchRepeatExpr>,
    pub _parent: SharedType<SwitchRepeatExpr>,
    pub _self: SharedType<Self>,
    code: RefCell<u8>,
    size: RefCell<u32>,
    body: RefCell<Vec<SwitchRepeatExpr_Body>>,
    _io: RefCell<BytesReader>,
    body_raw: RefCell<Vec<Vec<u8>>>,
}
#[derive(Debug, Clone)]
pub enum SwitchRepeatExpr_Body {
    SwitchRepeatExpr_One(OptRc<SwitchRepeatExpr_One>),
    SwitchRepeatExpr_Two(OptRc<SwitchRepeatExpr_Two>),
    Bytes(Vec<u8>),
}
impl From<&SwitchRepeatExpr_Body> for OptRc<SwitchRepeatExpr_One> {
    fn from(v: &SwitchRepeatExpr_Body) -> Self {
        if let SwitchRepeatExpr_Body::SwitchRepeatExpr_One(x) = v {
            return x.clone();
        }
        panic!("expected SwitchRepeatExpr_Body::SwitchRepeatExpr_One, got {:?}", v)
    }
}
impl From<OptRc<SwitchRepeatExpr_One>> for SwitchRepeatExpr_Body {
    fn from(v: OptRc<SwitchRepeatExpr_One>) -> Self {
        Self::SwitchRepeatExpr_One(v)
    }
}
impl From<&SwitchRepeatExpr_Body> for OptRc<SwitchRepeatExpr_Two> {
    fn from(v: &SwitchRepeatExpr_Body) -> Self {
        if let SwitchRepeatExpr_Body::SwitchRepeatExpr_Two(x) = v {
            return x.clone();
        }
        panic!("expected SwitchRepeatExpr_Body::SwitchRepeatExpr_Two, got {:?}", v)
    }
}
impl From<OptRc<SwitchRepeatExpr_Two>> for SwitchRepeatExpr_Body {
    fn from(v: OptRc<SwitchRepeatExpr_Two>) -> Self {
        Self::SwitchRepeatExpr_Two(v)
    }
}
impl From<&SwitchRepeatExpr_Body> for Vec<u8> {
    fn from(v: &SwitchRepeatExpr_Body) -> Self {
        if let SwitchRepeatExpr_Body::Bytes(x) = v {
            return x.clone();
        }
        panic!("expected SwitchRepeatExpr_Body::Bytes, got {:?}", v)
    }
}
impl From<Vec<u8>> for SwitchRepeatExpr_Body {
    fn from(v: Vec<u8>) -> Self {
        Self::Bytes(v)
    }
}
impl KStruct for SwitchRepeatExpr {
    type Root = SwitchRepeatExpr;
    type Parent = SwitchRepeatExpr;

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
        *self_rc.size.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.body_raw.borrow_mut() = Vec::new();
        *self_rc.body.borrow_mut() = Vec::new();
        let l_body = 1;
        for _i in 0..l_body {
            match *self_rc.code() {
                17 => {
                    self_rc.body_raw.borrow_mut().push(_io.read_bytes(*self_rc.size() as usize)?.into());
                    let body_raw = self_rc.body_raw.borrow();
                    let io_body_raw = BytesReader::from(body_raw.last().unwrap().clone());
                    let t = Self::read_into::<BytesReader, SwitchRepeatExpr_One>(&io_body_raw, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    self_rc.body.borrow_mut().push(t);
                }
                34 => {
                    self_rc.body_raw.borrow_mut().push(_io.read_bytes(*self_rc.size() as usize)?.into());
                    let body_raw = self_rc.body_raw.borrow();
                    let io_body_raw = BytesReader::from(body_raw.last().unwrap().clone());
                    let t = Self::read_into::<BytesReader, SwitchRepeatExpr_Two>(&io_body_raw, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                    self_rc.body.borrow_mut().push(t);
                }
                _ => {
                    self_rc.body.borrow_mut().push(_io.read_bytes(*self_rc.size() as usize)?.into());
                }
            }
        }
        Ok(())
    }
}
impl SwitchRepeatExpr {
}
impl SwitchRepeatExpr {
    pub fn code(&self) -> Ref<'_, u8> {
        self.code.borrow()
    }
}
impl SwitchRepeatExpr {
    pub fn size(&self) -> Ref<'_, u32> {
        self.size.borrow()
    }
}
impl SwitchRepeatExpr {
    pub fn body(&self) -> Ref<'_, Vec<SwitchRepeatExpr_Body>> {
        self.body.borrow()
    }
}
impl SwitchRepeatExpr {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
impl SwitchRepeatExpr {
    pub fn body_raw(&self) -> Ref<'_, Vec<Vec<u8>>> {
        self.body_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchRepeatExpr_One {
    pub _root: SharedType<SwitchRepeatExpr>,
    pub _parent: SharedType<SwitchRepeatExpr>,
    pub _self: SharedType<Self>,
    first: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchRepeatExpr_One {
    type Root = SwitchRepeatExpr;
    type Parent = SwitchRepeatExpr;

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
        *self_rc.first.borrow_mut() = _io.read_bytes_full()?.into();
        Ok(())
    }
}
impl SwitchRepeatExpr_One {
}
impl SwitchRepeatExpr_One {
    pub fn first(&self) -> Ref<'_, Vec<u8>> {
        self.first.borrow()
    }
}
impl SwitchRepeatExpr_One {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchRepeatExpr_Two {
    pub _root: SharedType<SwitchRepeatExpr>,
    pub _parent: SharedType<SwitchRepeatExpr>,
    pub _self: SharedType<Self>,
    second: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchRepeatExpr_Two {
    type Root = SwitchRepeatExpr;
    type Parent = SwitchRepeatExpr;

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
        *self_rc.second.borrow_mut() = _io.read_bytes_full()?.into();
        Ok(())
    }
}
impl SwitchRepeatExpr_Two {
}
impl SwitchRepeatExpr_Two {
    pub fn second(&self) -> Ref<'_, Vec<u8>> {
        self.second.borrow()
    }
}
impl SwitchRepeatExpr_Two {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
