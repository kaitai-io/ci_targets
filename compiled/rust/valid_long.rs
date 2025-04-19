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
pub struct ValidLong {
    pub _root: SharedType<ValidLong>,
    pub _parent: SharedType<ValidLong>,
    pub _self: SharedType<Self>,
    magic1: RefCell<Vec<u8>>,
    uint8: RefCell<u8>,
    sint8: RefCell<i8>,
    magic_uint: RefCell<String>,
    uint16: RefCell<u16>,
    uint32: RefCell<u32>,
    uint64: RefCell<u64>,
    magic_sint: RefCell<String>,
    sint16: RefCell<i16>,
    sint32: RefCell<i32>,
    sint64: RefCell<i64>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ValidLong {
    type Root = ValidLong;
    type Parent = ValidLong;

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
        if !(*self_rc.uint8() == 255) {
            return Err(KError::ValidationFailed(ValidationFailedError { kind: ValidationKind::NotEqual, src_path: "/seq/1".to_string() }));
        }
        *self_rc.sint8.borrow_mut() = _io.read_s1()?.into();
        if !(((*self_rc.sint8() as i32) == (-1 as i32))) {
            return Err(KError::ValidationFailed(ValidationFailedError { kind: ValidationKind::NotEqual, src_path: "/seq/2".to_string() }));
        }
        *self_rc.magic_uint.borrow_mut() = bytes_to_str(&_io.read_bytes(10 as usize)?.into(), "UTF-8")?;
        if !(*self_rc.magic_uint() == "PACK-U-DEF".to_string()) {
            return Err(KError::ValidationFailed(ValidationFailedError { kind: ValidationKind::NotEqual, src_path: "/seq/3".to_string() }));
        }
        *self_rc.uint16.borrow_mut() = _io.read_u2le()?.into();
        if !(((*self_rc.uint16() as i32) == (65535 as i32))) {
            return Err(KError::ValidationFailed(ValidationFailedError { kind: ValidationKind::NotEqual, src_path: "/seq/4".to_string() }));
        }
        *self_rc.uint32.borrow_mut() = _io.read_u4le()?.into();
        if !(((*self_rc.uint32() as i32) == (4294967295 as i32))) {
            return Err(KError::ValidationFailed(ValidationFailedError { kind: ValidationKind::NotEqual, src_path: "/seq/5".to_string() }));
        }
        *self_rc.uint64.borrow_mut() = _io.read_u8le()?.into();
        if !(((*self_rc.uint64() as i32) == (18446744073709551615 as i32))) {
            return Err(KError::ValidationFailed(ValidationFailedError { kind: ValidationKind::NotEqual, src_path: "/seq/6".to_string() }));
        }
        *self_rc.magic_sint.borrow_mut() = bytes_to_str(&_io.read_bytes(10 as usize)?.into(), "UTF-8")?;
        if !(*self_rc.magic_sint() == "PACK-S-DEF".to_string()) {
            return Err(KError::ValidationFailed(ValidationFailedError { kind: ValidationKind::NotEqual, src_path: "/seq/7".to_string() }));
        }
        *self_rc.sint16.borrow_mut() = _io.read_s2le()?.into();
        if !(((*self_rc.sint16() as i32) == (-1 as i32))) {
            return Err(KError::ValidationFailed(ValidationFailedError { kind: ValidationKind::NotEqual, src_path: "/seq/8".to_string() }));
        }
        *self_rc.sint32.borrow_mut() = _io.read_s4le()?.into();
        if !(((*self_rc.sint32() as i32) == (-1 as i32))) {
            return Err(KError::ValidationFailed(ValidationFailedError { kind: ValidationKind::NotEqual, src_path: "/seq/9".to_string() }));
        }
        *self_rc.sint64.borrow_mut() = _io.read_s8le()?.into();
        if !(((*self_rc.sint64() as i32) == (-1 as i32))) {
            return Err(KError::ValidationFailed(ValidationFailedError { kind: ValidationKind::NotEqual, src_path: "/seq/10".to_string() }));
        }
        Ok(())
    }
}
impl ValidLong {
}
impl ValidLong {
    pub fn magic1(&self) -> Ref<Vec<u8>> {
        self.magic1.borrow()
    }
}
impl ValidLong {
    pub fn uint8(&self) -> Ref<u8> {
        self.uint8.borrow()
    }
}
impl ValidLong {
    pub fn sint8(&self) -> Ref<i8> {
        self.sint8.borrow()
    }
}
impl ValidLong {
    pub fn magic_uint(&self) -> Ref<String> {
        self.magic_uint.borrow()
    }
}
impl ValidLong {
    pub fn uint16(&self) -> Ref<u16> {
        self.uint16.borrow()
    }
}
impl ValidLong {
    pub fn uint32(&self) -> Ref<u32> {
        self.uint32.borrow()
    }
}
impl ValidLong {
    pub fn uint64(&self) -> Ref<u64> {
        self.uint64.borrow()
    }
}
impl ValidLong {
    pub fn magic_sint(&self) -> Ref<String> {
        self.magic_sint.borrow()
    }
}
impl ValidLong {
    pub fn sint16(&self) -> Ref<i16> {
        self.sint16.borrow()
    }
}
impl ValidLong {
    pub fn sint32(&self) -> Ref<i32> {
        self.sint32.borrow()
    }
}
impl ValidLong {
    pub fn sint64(&self) -> Ref<i64> {
        self.sint64.borrow()
    }
}
impl ValidLong {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
