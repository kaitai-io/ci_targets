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
pub struct SwitchManualIntElse {
    pub _root: SharedType<SwitchManualIntElse>,
    pub _parent: SharedType<SwitchManualIntElse>,
    pub _self: SharedType<Self>,
    opcodes: RefCell<Vec<OptRc<SwitchManualIntElse_Opcode>>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchManualIntElse {
    type Root = SwitchManualIntElse;
    type Parent = SwitchManualIntElse;

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
        *self_rc.opcodes.borrow_mut() = Vec::new();
        {
            let mut _i = 0;
            while !_io.is_eof() {
                let t = Self::read_into::<_, SwitchManualIntElse_Opcode>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                self_rc.opcodes.borrow_mut().push(t);
                _i += 1;
            }
        }
        Ok(())
    }
}
impl SwitchManualIntElse {
}
impl SwitchManualIntElse {
    pub fn opcodes(&self) -> Ref<Vec<OptRc<SwitchManualIntElse_Opcode>>> {
        self.opcodes.borrow()
    }
}
impl SwitchManualIntElse {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchManualIntElse_Opcode {
    pub _root: SharedType<SwitchManualIntElse>,
    pub _parent: SharedType<SwitchManualIntElse>,
    pub _self: SharedType<Self>,
    code: RefCell<u8>,
    body: RefCell<Option<SwitchManualIntElse_Opcode_Body>>,
    _io: RefCell<BytesReader>,
}
#[derive(Debug, Clone)]
pub enum SwitchManualIntElse_Opcode_Body {
    SwitchManualIntElse_Opcode_Intval(OptRc<SwitchManualIntElse_Opcode_Intval>),
    SwitchManualIntElse_Opcode_Strval(OptRc<SwitchManualIntElse_Opcode_Strval>),
    SwitchManualIntElse_Opcode_Noneval(OptRc<SwitchManualIntElse_Opcode_Noneval>),
}
impl From<&SwitchManualIntElse_Opcode_Body> for OptRc<SwitchManualIntElse_Opcode_Intval> {
    fn from(v: &SwitchManualIntElse_Opcode_Body) -> Self {
        if let SwitchManualIntElse_Opcode_Body::SwitchManualIntElse_Opcode_Intval(x) = v {
            return x.clone();
        }
        panic!("expected SwitchManualIntElse_Opcode_Body::SwitchManualIntElse_Opcode_Intval, got {:?}", v)
    }
}
impl From<OptRc<SwitchManualIntElse_Opcode_Intval>> for SwitchManualIntElse_Opcode_Body {
    fn from(v: OptRc<SwitchManualIntElse_Opcode_Intval>) -> Self {
        Self::SwitchManualIntElse_Opcode_Intval(v)
    }
}
impl From<&SwitchManualIntElse_Opcode_Body> for OptRc<SwitchManualIntElse_Opcode_Strval> {
    fn from(v: &SwitchManualIntElse_Opcode_Body) -> Self {
        if let SwitchManualIntElse_Opcode_Body::SwitchManualIntElse_Opcode_Strval(x) = v {
            return x.clone();
        }
        panic!("expected SwitchManualIntElse_Opcode_Body::SwitchManualIntElse_Opcode_Strval, got {:?}", v)
    }
}
impl From<OptRc<SwitchManualIntElse_Opcode_Strval>> for SwitchManualIntElse_Opcode_Body {
    fn from(v: OptRc<SwitchManualIntElse_Opcode_Strval>) -> Self {
        Self::SwitchManualIntElse_Opcode_Strval(v)
    }
}
impl From<&SwitchManualIntElse_Opcode_Body> for OptRc<SwitchManualIntElse_Opcode_Noneval> {
    fn from(v: &SwitchManualIntElse_Opcode_Body) -> Self {
        if let SwitchManualIntElse_Opcode_Body::SwitchManualIntElse_Opcode_Noneval(x) = v {
            return x.clone();
        }
        panic!("expected SwitchManualIntElse_Opcode_Body::SwitchManualIntElse_Opcode_Noneval, got {:?}", v)
    }
}
impl From<OptRc<SwitchManualIntElse_Opcode_Noneval>> for SwitchManualIntElse_Opcode_Body {
    fn from(v: OptRc<SwitchManualIntElse_Opcode_Noneval>) -> Self {
        Self::SwitchManualIntElse_Opcode_Noneval(v)
    }
}
impl KStruct for SwitchManualIntElse_Opcode {
    type Root = SwitchManualIntElse;
    type Parent = SwitchManualIntElse;

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
            73 => {
                let t = Self::read_into::<_, SwitchManualIntElse_Opcode_Intval>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                *self_rc.body.borrow_mut() = Some(t);
            }
            83 => {
                let t = Self::read_into::<_, SwitchManualIntElse_Opcode_Strval>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                *self_rc.body.borrow_mut() = Some(t);
            }
            _ => {
                let t = Self::read_into::<_, SwitchManualIntElse_Opcode_Noneval>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                *self_rc.body.borrow_mut() = Some(t);
            }
        }
        Ok(())
    }
}
impl SwitchManualIntElse_Opcode {
}
impl SwitchManualIntElse_Opcode {
    pub fn code(&self) -> Ref<u8> {
        self.code.borrow()
    }
}
impl SwitchManualIntElse_Opcode {
    pub fn body(&self) -> Ref<Option<SwitchManualIntElse_Opcode_Body>> {
        self.body.borrow()
    }
}
impl SwitchManualIntElse_Opcode {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchManualIntElse_Opcode_Intval {
    pub _root: SharedType<SwitchManualIntElse>,
    pub _parent: SharedType<SwitchManualIntElse_Opcode>,
    pub _self: SharedType<Self>,
    value: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchManualIntElse_Opcode_Intval {
    type Root = SwitchManualIntElse;
    type Parent = SwitchManualIntElse_Opcode;

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
        Ok(())
    }
}
impl SwitchManualIntElse_Opcode_Intval {
}
impl SwitchManualIntElse_Opcode_Intval {
    pub fn value(&self) -> Ref<u8> {
        self.value.borrow()
    }
}
impl SwitchManualIntElse_Opcode_Intval {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchManualIntElse_Opcode_Noneval {
    pub _root: SharedType<SwitchManualIntElse>,
    pub _parent: SharedType<SwitchManualIntElse_Opcode>,
    pub _self: SharedType<Self>,
    filler: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchManualIntElse_Opcode_Noneval {
    type Root = SwitchManualIntElse;
    type Parent = SwitchManualIntElse_Opcode;

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
        *self_rc.filler.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl SwitchManualIntElse_Opcode_Noneval {
}
impl SwitchManualIntElse_Opcode_Noneval {
    pub fn filler(&self) -> Ref<u32> {
        self.filler.borrow()
    }
}
impl SwitchManualIntElse_Opcode_Noneval {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchManualIntElse_Opcode_Strval {
    pub _root: SharedType<SwitchManualIntElse>,
    pub _parent: SharedType<SwitchManualIntElse_Opcode>,
    pub _self: SharedType<Self>,
    value: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchManualIntElse_Opcode_Strval {
    type Root = SwitchManualIntElse;
    type Parent = SwitchManualIntElse_Opcode;

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
        *self_rc.value.borrow_mut() = bytes_to_str(&_io.read_bytes_term(0, false, true, true)?.into(), "ASCII")?;
        Ok(())
    }
}
impl SwitchManualIntElse_Opcode_Strval {
}
impl SwitchManualIntElse_Opcode_Strval {
    pub fn value(&self) -> Ref<String> {
        self.value.borrow()
    }
}
impl SwitchManualIntElse_Opcode_Strval {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
