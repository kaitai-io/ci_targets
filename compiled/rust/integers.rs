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
pub struct Integers {
    pub _root: SharedType<Integers>,
    pub _parent: SharedType<Integers>,
    pub _self: SharedType<Self>,
    magic1: RefCell<Vec<u8>>,
    uint8: RefCell<u8>,
    sint8: RefCell<i8>,
    magic_uint: RefCell<Vec<u8>>,
    uint16: RefCell<u16>,
    uint32: RefCell<u32>,
    uint64: RefCell<u64>,
    magic_sint: RefCell<Vec<u8>>,
    sint16: RefCell<i16>,
    sint32: RefCell<i32>,
    sint64: RefCell<i64>,
    magic_uint_le: RefCell<Vec<u8>>,
    uint16le: RefCell<u16>,
    uint32le: RefCell<u32>,
    uint64le: RefCell<u64>,
    magic_sint_le: RefCell<Vec<u8>>,
    sint16le: RefCell<i16>,
    sint32le: RefCell<i32>,
    sint64le: RefCell<i64>,
    magic_uint_be: RefCell<Vec<u8>>,
    uint16be: RefCell<u16>,
    uint32be: RefCell<u32>,
    uint64be: RefCell<u64>,
    magic_sint_be: RefCell<Vec<u8>>,
    sint16be: RefCell<i16>,
    sint32be: RefCell<i32>,
    sint64be: RefCell<i64>,
    _io: RefCell<BytesReader>,
}
impl KStruct for Integers {
    type Root = Integers;
    type Parent = Integers;

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
        *self_rc.magic1.borrow_mut() = _io.read_bytes(6 as usize)?.into();
        if !(*self_rc.magic1() == vec![0x50u8, 0x41u8, 0x43u8, 0x4bu8, 0x2du8, 0x31u8]) {
            return Err(KError::ValidationFailed(ValidationFailedError { kind: ValidationKind::NotEqual, src_path: "/seq/0".to_string() }));
        }
        *self_rc.uint8.borrow_mut() = _io.read_u1()?.into();
        *self_rc.sint8.borrow_mut() = _io.read_s1()?.into();
        *self_rc.magic_uint.borrow_mut() = _io.read_bytes(10 as usize)?.into();
        if !(*self_rc.magic_uint() == vec![0x50u8, 0x41u8, 0x43u8, 0x4bu8, 0x2du8, 0x55u8, 0x2du8, 0x44u8, 0x45u8, 0x46u8]) {
            return Err(KError::ValidationFailed(ValidationFailedError { kind: ValidationKind::NotEqual, src_path: "/seq/3".to_string() }));
        }
        *self_rc.uint16.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.uint32.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.uint64.borrow_mut() = _io.read_u8le()?.into();
        *self_rc.magic_sint.borrow_mut() = _io.read_bytes(10 as usize)?.into();
        if !(*self_rc.magic_sint() == vec![0x50u8, 0x41u8, 0x43u8, 0x4bu8, 0x2du8, 0x53u8, 0x2du8, 0x44u8, 0x45u8, 0x46u8]) {
            return Err(KError::ValidationFailed(ValidationFailedError { kind: ValidationKind::NotEqual, src_path: "/seq/7".to_string() }));
        }
        *self_rc.sint16.borrow_mut() = _io.read_s2le()?.into();
        *self_rc.sint32.borrow_mut() = _io.read_s4le()?.into();
        *self_rc.sint64.borrow_mut() = _io.read_s8le()?.into();
        *self_rc.magic_uint_le.borrow_mut() = _io.read_bytes(9 as usize)?.into();
        if !(*self_rc.magic_uint_le() == vec![0x50u8, 0x41u8, 0x43u8, 0x4bu8, 0x2du8, 0x55u8, 0x2du8, 0x4cu8, 0x45u8]) {
            return Err(KError::ValidationFailed(ValidationFailedError { kind: ValidationKind::NotEqual, src_path: "/seq/11".to_string() }));
        }
        *self_rc.uint16le.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.uint32le.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.uint64le.borrow_mut() = _io.read_u8le()?.into();
        *self_rc.magic_sint_le.borrow_mut() = _io.read_bytes(9 as usize)?.into();
        if !(*self_rc.magic_sint_le() == vec![0x50u8, 0x41u8, 0x43u8, 0x4bu8, 0x2du8, 0x53u8, 0x2du8, 0x4cu8, 0x45u8]) {
            return Err(KError::ValidationFailed(ValidationFailedError { kind: ValidationKind::NotEqual, src_path: "/seq/15".to_string() }));
        }
        *self_rc.sint16le.borrow_mut() = _io.read_s2le()?.into();
        *self_rc.sint32le.borrow_mut() = _io.read_s4le()?.into();
        *self_rc.sint64le.borrow_mut() = _io.read_s8le()?.into();
        *self_rc.magic_uint_be.borrow_mut() = _io.read_bytes(9 as usize)?.into();
        if !(*self_rc.magic_uint_be() == vec![0x50u8, 0x41u8, 0x43u8, 0x4bu8, 0x2du8, 0x55u8, 0x2du8, 0x42u8, 0x45u8]) {
            return Err(KError::ValidationFailed(ValidationFailedError { kind: ValidationKind::NotEqual, src_path: "/seq/19".to_string() }));
        }
        *self_rc.uint16be.borrow_mut() = _io.read_u2be()?.into();
        *self_rc.uint32be.borrow_mut() = _io.read_u4be()?.into();
        *self_rc.uint64be.borrow_mut() = _io.read_u8be()?.into();
        *self_rc.magic_sint_be.borrow_mut() = _io.read_bytes(9 as usize)?.into();
        if !(*self_rc.magic_sint_be() == vec![0x50u8, 0x41u8, 0x43u8, 0x4bu8, 0x2du8, 0x53u8, 0x2du8, 0x42u8, 0x45u8]) {
            return Err(KError::ValidationFailed(ValidationFailedError { kind: ValidationKind::NotEqual, src_path: "/seq/23".to_string() }));
        }
        *self_rc.sint16be.borrow_mut() = _io.read_s2be()?.into();
        *self_rc.sint32be.borrow_mut() = _io.read_s4be()?.into();
        *self_rc.sint64be.borrow_mut() = _io.read_s8be()?.into();
        Ok(())
    }
}
impl Integers {
}
impl Integers {
    pub fn magic1(&self) -> Ref<'_, Vec<u8>> {
        self.magic1.borrow()
    }
}
impl Integers {
    pub fn uint8(&self) -> Ref<'_, u8> {
        self.uint8.borrow()
    }
}
impl Integers {
    pub fn sint8(&self) -> Ref<'_, i8> {
        self.sint8.borrow()
    }
}
impl Integers {
    pub fn magic_uint(&self) -> Ref<'_, Vec<u8>> {
        self.magic_uint.borrow()
    }
}
impl Integers {
    pub fn uint16(&self) -> Ref<'_, u16> {
        self.uint16.borrow()
    }
}
impl Integers {
    pub fn uint32(&self) -> Ref<'_, u32> {
        self.uint32.borrow()
    }
}
impl Integers {
    pub fn uint64(&self) -> Ref<'_, u64> {
        self.uint64.borrow()
    }
}
impl Integers {
    pub fn magic_sint(&self) -> Ref<'_, Vec<u8>> {
        self.magic_sint.borrow()
    }
}
impl Integers {
    pub fn sint16(&self) -> Ref<'_, i16> {
        self.sint16.borrow()
    }
}
impl Integers {
    pub fn sint32(&self) -> Ref<'_, i32> {
        self.sint32.borrow()
    }
}
impl Integers {
    pub fn sint64(&self) -> Ref<'_, i64> {
        self.sint64.borrow()
    }
}
impl Integers {
    pub fn magic_uint_le(&self) -> Ref<'_, Vec<u8>> {
        self.magic_uint_le.borrow()
    }
}
impl Integers {
    pub fn uint16le(&self) -> Ref<'_, u16> {
        self.uint16le.borrow()
    }
}
impl Integers {
    pub fn uint32le(&self) -> Ref<'_, u32> {
        self.uint32le.borrow()
    }
}
impl Integers {
    pub fn uint64le(&self) -> Ref<'_, u64> {
        self.uint64le.borrow()
    }
}
impl Integers {
    pub fn magic_sint_le(&self) -> Ref<'_, Vec<u8>> {
        self.magic_sint_le.borrow()
    }
}
impl Integers {
    pub fn sint16le(&self) -> Ref<'_, i16> {
        self.sint16le.borrow()
    }
}
impl Integers {
    pub fn sint32le(&self) -> Ref<'_, i32> {
        self.sint32le.borrow()
    }
}
impl Integers {
    pub fn sint64le(&self) -> Ref<'_, i64> {
        self.sint64le.borrow()
    }
}
impl Integers {
    pub fn magic_uint_be(&self) -> Ref<'_, Vec<u8>> {
        self.magic_uint_be.borrow()
    }
}
impl Integers {
    pub fn uint16be(&self) -> Ref<'_, u16> {
        self.uint16be.borrow()
    }
}
impl Integers {
    pub fn uint32be(&self) -> Ref<'_, u32> {
        self.uint32be.borrow()
    }
}
impl Integers {
    pub fn uint64be(&self) -> Ref<'_, u64> {
        self.uint64be.borrow()
    }
}
impl Integers {
    pub fn magic_sint_be(&self) -> Ref<'_, Vec<u8>> {
        self.magic_sint_be.borrow()
    }
}
impl Integers {
    pub fn sint16be(&self) -> Ref<'_, i16> {
        self.sint16be.borrow()
    }
}
impl Integers {
    pub fn sint32be(&self) -> Ref<'_, i32> {
        self.sint32be.borrow()
    }
}
impl Integers {
    pub fn sint64be(&self) -> Ref<'_, i64> {
        self.sint64be.borrow()
    }
}
impl Integers {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
