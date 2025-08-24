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
pub struct SwitchManualStr {
    pub _root: SharedType<SwitchManualStr>,
    pub _parent: SharedType<SwitchManualStr>,
    pub _self: SharedType<Self>,
    opcodes: RefCell<Vec<OptRc<SwitchManualStr_Opcode>>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchManualStr {
    type Root = SwitchManualStr;
    type Parent = SwitchManualStr;

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
                let t = Self::read_into::<_, SwitchManualStr_Opcode>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                self_rc.opcodes.borrow_mut().push(t);
                _i += 1;
            }
        }
        Ok(())
    }
}
impl SwitchManualStr {
}
impl SwitchManualStr {
    pub fn opcodes(&self) -> Ref<'_, Vec<OptRc<SwitchManualStr_Opcode>>> {
        self.opcodes.borrow()
    }
}
impl SwitchManualStr {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchManualStr_Opcode {
    pub _root: SharedType<SwitchManualStr>,
    pub _parent: SharedType<SwitchManualStr>,
    pub _self: SharedType<Self>,
    code: RefCell<String>,
    body: RefCell<Option<SwitchManualStr_Opcode_Body>>,
    _io: RefCell<BytesReader>,
}
#[derive(Debug, Clone)]
pub enum SwitchManualStr_Opcode_Body {
    SwitchManualStr_Opcode_Intval(OptRc<SwitchManualStr_Opcode_Intval>),
    SwitchManualStr_Opcode_Strval(OptRc<SwitchManualStr_Opcode_Strval>),
}
impl From<&SwitchManualStr_Opcode_Body> for OptRc<SwitchManualStr_Opcode_Intval> {
    fn from(v: &SwitchManualStr_Opcode_Body) -> Self {
        if let SwitchManualStr_Opcode_Body::SwitchManualStr_Opcode_Intval(x) = v {
            return x.clone();
        }
        panic!("expected SwitchManualStr_Opcode_Body::SwitchManualStr_Opcode_Intval, got {:?}", v)
    }
}
impl From<OptRc<SwitchManualStr_Opcode_Intval>> for SwitchManualStr_Opcode_Body {
    fn from(v: OptRc<SwitchManualStr_Opcode_Intval>) -> Self {
        Self::SwitchManualStr_Opcode_Intval(v)
    }
}
impl From<&SwitchManualStr_Opcode_Body> for OptRc<SwitchManualStr_Opcode_Strval> {
    fn from(v: &SwitchManualStr_Opcode_Body) -> Self {
        if let SwitchManualStr_Opcode_Body::SwitchManualStr_Opcode_Strval(x) = v {
            return x.clone();
        }
        panic!("expected SwitchManualStr_Opcode_Body::SwitchManualStr_Opcode_Strval, got {:?}", v)
    }
}
impl From<OptRc<SwitchManualStr_Opcode_Strval>> for SwitchManualStr_Opcode_Body {
    fn from(v: OptRc<SwitchManualStr_Opcode_Strval>) -> Self {
        Self::SwitchManualStr_Opcode_Strval(v)
    }
}
impl KStruct for SwitchManualStr_Opcode {
    type Root = SwitchManualStr;
    type Parent = SwitchManualStr;

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
        *self_rc.code.borrow_mut() = bytes_to_str(&_io.read_bytes(1 as usize)?.into(), "ASCII")?;
        {
            let on = self_rc.code();
            if *on == "I" {
                let t = Self::read_into::<_, SwitchManualStr_Opcode_Intval>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                *self_rc.body.borrow_mut() = Some(t);
            }
            else if *on == "S" {
                let t = Self::read_into::<_, SwitchManualStr_Opcode_Strval>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                *self_rc.body.borrow_mut() = Some(t);
            }
        }
        Ok(())
    }
}
impl SwitchManualStr_Opcode {
}
impl SwitchManualStr_Opcode {
    pub fn code(&self) -> Ref<'_, String> {
        self.code.borrow()
    }
}
impl SwitchManualStr_Opcode {
    pub fn body(&self) -> Ref<'_, Option<SwitchManualStr_Opcode_Body>> {
        self.body.borrow()
    }
}
impl SwitchManualStr_Opcode {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchManualStr_Opcode_Intval {
    pub _root: SharedType<SwitchManualStr>,
    pub _parent: SharedType<SwitchManualStr_Opcode>,
    pub _self: SharedType<Self>,
    value: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchManualStr_Opcode_Intval {
    type Root = SwitchManualStr;
    type Parent = SwitchManualStr_Opcode;

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
impl SwitchManualStr_Opcode_Intval {
}
impl SwitchManualStr_Opcode_Intval {
    pub fn value(&self) -> Ref<'_, u8> {
        self.value.borrow()
    }
}
impl SwitchManualStr_Opcode_Intval {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchManualStr_Opcode_Strval {
    pub _root: SharedType<SwitchManualStr>,
    pub _parent: SharedType<SwitchManualStr_Opcode>,
    pub _self: SharedType<Self>,
    value: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchManualStr_Opcode_Strval {
    type Root = SwitchManualStr;
    type Parent = SwitchManualStr_Opcode;

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
impl SwitchManualStr_Opcode_Strval {
}
impl SwitchManualStr_Opcode_Strval {
    pub fn value(&self) -> Ref<'_, String> {
        self.value.borrow()
    }
}
impl SwitchManualStr_Opcode_Strval {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
