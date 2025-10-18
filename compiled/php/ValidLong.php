<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ValidLong extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ValidLong $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_magic1 = $this->_io->readBytes(6);
            if (!($this->_m_magic1 == "\x50\x41\x43\x4B\x2D\x31")) {
                throw new \Kaitai\Struct\Error\ValidationNotEqualError("\x50\x41\x43\x4B\x2D\x31", $this->_m_magic1, $this->_io, "/seq/0");
            }
            $this->_m_uint8 = $this->_io->readU1();
            if (!($this->_m_uint8 == 255)) {
                throw new \Kaitai\Struct\Error\ValidationNotEqualError(255, $this->_m_uint8, $this->_io, "/seq/1");
            }
            $this->_m_sint8 = $this->_io->readS1();
            if (!($this->_m_sint8 == -1)) {
                throw new \Kaitai\Struct\Error\ValidationNotEqualError(-1, $this->_m_sint8, $this->_io, "/seq/2");
            }
            $this->_m_magicUint = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes(10), "UTF-8");
            if (!($this->_m_magicUint == "PACK-U-DEF")) {
                throw new \Kaitai\Struct\Error\ValidationNotEqualError("PACK-U-DEF", $this->_m_magicUint, $this->_io, "/seq/3");
            }
            $this->_m_uint16 = $this->_io->readU2le();
            if (!($this->_m_uint16 == 65535)) {
                throw new \Kaitai\Struct\Error\ValidationNotEqualError(65535, $this->_m_uint16, $this->_io, "/seq/4");
            }
            $this->_m_uint32 = $this->_io->readU4le();
            if (!($this->_m_uint32 == 4294967295)) {
                throw new \Kaitai\Struct\Error\ValidationNotEqualError(4294967295, $this->_m_uint32, $this->_io, "/seq/5");
            }
            $this->_m_uint64 = $this->_io->readU8le();
            if (!($this->_m_uint64 == -1)) {
                throw new \Kaitai\Struct\Error\ValidationNotEqualError(-1, $this->_m_uint64, $this->_io, "/seq/6");
            }
            $this->_m_magicSint = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes(10), "UTF-8");
            if (!($this->_m_magicSint == "PACK-S-DEF")) {
                throw new \Kaitai\Struct\Error\ValidationNotEqualError("PACK-S-DEF", $this->_m_magicSint, $this->_io, "/seq/7");
            }
            $this->_m_sint16 = $this->_io->readS2le();
            if (!($this->_m_sint16 == -1)) {
                throw new \Kaitai\Struct\Error\ValidationNotEqualError(-1, $this->_m_sint16, $this->_io, "/seq/8");
            }
            $this->_m_sint32 = $this->_io->readS4le();
            if (!($this->_m_sint32 == -1)) {
                throw new \Kaitai\Struct\Error\ValidationNotEqualError(-1, $this->_m_sint32, $this->_io, "/seq/9");
            }
            $this->_m_sint64 = $this->_io->readS8le();
            if (!($this->_m_sint64 == -1)) {
                throw new \Kaitai\Struct\Error\ValidationNotEqualError(-1, $this->_m_sint64, $this->_io, "/seq/10");
            }
        }
        public function magic1() { return $this->_m_magic1; }
        public function uint8() { return $this->_m_uint8; }
        public function sint8() { return $this->_m_sint8; }
        public function magicUint() { return $this->_m_magicUint; }
        public function uint16() { return $this->_m_uint16; }
        public function uint32() { return $this->_m_uint32; }
        public function uint64() { return $this->_m_uint64; }
        public function magicSint() { return $this->_m_magicSint; }
        public function sint16() { return $this->_m_sint16; }
        public function sint32() { return $this->_m_sint32; }
        public function sint64() { return $this->_m_sint64; }
        protected $_m_magic1;
        protected $_m_uint8;
        protected $_m_sint8;
        protected $_m_magicUint;
        protected $_m_uint16;
        protected $_m_uint32;
        protected $_m_uint64;
        protected $_m_magicSint;
        protected $_m_sint16;
        protected $_m_sint32;
        protected $_m_sint64;
    }
}
