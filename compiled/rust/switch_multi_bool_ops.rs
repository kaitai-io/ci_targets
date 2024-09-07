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
pub struct SwitchMultiBoolOps {
    pub _root: SharedType<SwitchMultiBoolOps>,
    pub _parent: SharedType<SwitchMultiBoolOps>,
    pub _self: SharedType<Self>,
    opcodes: RefCell<Vec<OptRc<SwitchMultiBoolOps_Opcode>>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchMultiBoolOps {
    type Root = SwitchMultiBoolOps;
    type Parent = SwitchMultiBoolOps;

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
                let t = Self::read_into::<_, SwitchMultiBoolOps_Opcode>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                self_rc.opcodes.borrow_mut().push(t);
                _i += 1;
            }
        }
        Ok(())
    }
}
impl SwitchMultiBoolOps {
}
impl SwitchMultiBoolOps {
    pub fn opcodes(&self) -> Ref<Vec<OptRc<SwitchMultiBoolOps_Opcode>>> {
        self.opcodes.borrow()
    }
}
impl SwitchMultiBoolOps {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchMultiBoolOps_Opcode {
    pub _root: SharedType<SwitchMultiBoolOps>,
    pub _parent: SharedType<SwitchMultiBoolOps>,
    pub _self: SharedType<Self>,
    code: RefCell<u8>,
    body: RefCell<Option<SwitchMultiBoolOps_Opcode_Body>>,
    _io: RefCell<BytesReader>,
}
#[derive(Debug, Clone)]
pub enum SwitchMultiBoolOps_Opcode_Body {
    U1(u8),
    U2(u16),
    U4(u32),
    U8(u64),
}
impl From<u8> for SwitchMultiBoolOps_Opcode_Body {
    fn from(v: u8) -> Self {
        Self::U1(v)
    }
}
impl From<&SwitchMultiBoolOps_Opcode_Body> for u8 {
    fn from(e: &SwitchMultiBoolOps_Opcode_Body) -> Self {
        if let SwitchMultiBoolOps_Opcode_Body::U1(v) = e {
            return *v
        }
        panic!("trying to convert from enum SwitchMultiBoolOps_Opcode_Body::U1 to u8, enum value {:?}", e)
    }
}
impl From<u16> for SwitchMultiBoolOps_Opcode_Body {
    fn from(v: u16) -> Self {
        Self::U2(v)
    }
}
impl From<&SwitchMultiBoolOps_Opcode_Body> for u16 {
    fn from(e: &SwitchMultiBoolOps_Opcode_Body) -> Self {
        if let SwitchMultiBoolOps_Opcode_Body::U2(v) = e {
            return *v
        }
        panic!("trying to convert from enum SwitchMultiBoolOps_Opcode_Body::U2 to u16, enum value {:?}", e)
    }
}
impl From<u32> for SwitchMultiBoolOps_Opcode_Body {
    fn from(v: u32) -> Self {
        Self::U4(v)
    }
}
impl From<&SwitchMultiBoolOps_Opcode_Body> for u32 {
    fn from(e: &SwitchMultiBoolOps_Opcode_Body) -> Self {
        if let SwitchMultiBoolOps_Opcode_Body::U4(v) = e {
            return *v
        }
        panic!("trying to convert from enum SwitchMultiBoolOps_Opcode_Body::U4 to u32, enum value {:?}", e)
    }
}
impl From<u64> for SwitchMultiBoolOps_Opcode_Body {
    fn from(v: u64) -> Self {
        Self::U8(v)
    }
}
impl From<&SwitchMultiBoolOps_Opcode_Body> for u64 {
    fn from(e: &SwitchMultiBoolOps_Opcode_Body) -> Self {
        if let SwitchMultiBoolOps_Opcode_Body::U8(v) = e {
            return *v
        }
        panic!("trying to convert from enum SwitchMultiBoolOps_Opcode_Body::U8 to u64, enum value {:?}", e)
    }
}
impl From<&SwitchMultiBoolOps_Opcode_Body> for usize {
    fn from(e: &SwitchMultiBoolOps_Opcode_Body) -> Self {
        match e {
            SwitchMultiBoolOps_Opcode_Body::U1(v) => *v as usize,
            SwitchMultiBoolOps_Opcode_Body::U2(v) => *v as usize,
            SwitchMultiBoolOps_Opcode_Body::U4(v) => *v as usize,
            SwitchMultiBoolOps_Opcode_Body::U8(v) => *v as usize,
        }
    }
}

impl KStruct for SwitchMultiBoolOps_Opcode {
    type Root = SwitchMultiBoolOps;
    type Parent = SwitchMultiBoolOps;

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
        match if  ((((*self_rc.code() as u8) > (0 as u8))) && (((*self_rc.code() as u8) <= (8 as u8))) && (if ((*self_rc.code() as u8) != (10 as u8)) { true } else { false }))  { *self_rc.code() } else { 0 } {
            1 => {
                *self_rc.body.borrow_mut() = Some(_io.read_u1()?.into());
            }
            2 => {
                *self_rc.body.borrow_mut() = Some(_io.read_u2le()?.into());
            }
            4 => {
                *self_rc.body.borrow_mut() = Some(_io.read_u4le()?.into());
            }
            8 => {
                *self_rc.body.borrow_mut() = Some(_io.read_u8le()?.into());
            }
            _ => {}
        }
        Ok(())
    }
}
impl SwitchMultiBoolOps_Opcode {
}
impl SwitchMultiBoolOps_Opcode {
    pub fn code(&self) -> Ref<u8> {
        self.code.borrow()
    }
}
impl SwitchMultiBoolOps_Opcode {
    pub fn body(&self) -> usize {
        self.body.borrow().as_ref().unwrap().into()
    }
    pub fn body_enum(&self) -> Ref<Option<SwitchMultiBoolOps_Opcode_Body>> {
        self.body.borrow()
    }
}
impl SwitchMultiBoolOps_Opcode {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
