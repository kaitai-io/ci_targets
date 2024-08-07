<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class Integers extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\Integers $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_magic1 = $this->_io->readBytes(6);
            if (!($this->_m_magic1 == "\x50\x41\x43\x4B\x2D\x31")) {
                throw new \Kaitai\Struct\Error\ValidationNotEqualError("\x50\x41\x43\x4B\x2D\x31", $this->_m_magic1, $this->_io, "/seq/0");
            }
            $this->_m_uint8 = $this->_io->readU1();
            $this->_m_sint8 = $this->_io->readS1();
            $this->_m_magicUint = $this->_io->readBytes(10);
            if (!($this->_m_magicUint == "\x50\x41\x43\x4B\x2D\x55\x2D\x44\x45\x46")) {
                throw new \Kaitai\Struct\Error\ValidationNotEqualError("\x50\x41\x43\x4B\x2D\x55\x2D\x44\x45\x46", $this->_m_magicUint, $this->_io, "/seq/3");
            }
            $this->_m_uint16 = $this->_io->readU2le();
            $this->_m_uint32 = $this->_io->readU4le();
            $this->_m_uint64 = $this->_io->readU8le();
            $this->_m_magicSint = $this->_io->readBytes(10);
            if (!($this->_m_magicSint == "\x50\x41\x43\x4B\x2D\x53\x2D\x44\x45\x46")) {
                throw new \Kaitai\Struct\Error\ValidationNotEqualError("\x50\x41\x43\x4B\x2D\x53\x2D\x44\x45\x46", $this->_m_magicSint, $this->_io, "/seq/7");
            }
            $this->_m_sint16 = $this->_io->readS2le();
            $this->_m_sint32 = $this->_io->readS4le();
            $this->_m_sint64 = $this->_io->readS8le();
            $this->_m_magicUintLe = $this->_io->readBytes(9);
            if (!($this->_m_magicUintLe == "\x50\x41\x43\x4B\x2D\x55\x2D\x4C\x45")) {
                throw new \Kaitai\Struct\Error\ValidationNotEqualError("\x50\x41\x43\x4B\x2D\x55\x2D\x4C\x45", $this->_m_magicUintLe, $this->_io, "/seq/11");
            }
            $this->_m_uint16le = $this->_io->readU2le();
            $this->_m_uint32le = $this->_io->readU4le();
            $this->_m_uint64le = $this->_io->readU8le();
            $this->_m_magicSintLe = $this->_io->readBytes(9);
            if (!($this->_m_magicSintLe == "\x50\x41\x43\x4B\x2D\x53\x2D\x4C\x45")) {
                throw new \Kaitai\Struct\Error\ValidationNotEqualError("\x50\x41\x43\x4B\x2D\x53\x2D\x4C\x45", $this->_m_magicSintLe, $this->_io, "/seq/15");
            }
            $this->_m_sint16le = $this->_io->readS2le();
            $this->_m_sint32le = $this->_io->readS4le();
            $this->_m_sint64le = $this->_io->readS8le();
            $this->_m_magicUintBe = $this->_io->readBytes(9);
            if (!($this->_m_magicUintBe == "\x50\x41\x43\x4B\x2D\x55\x2D\x42\x45")) {
                throw new \Kaitai\Struct\Error\ValidationNotEqualError("\x50\x41\x43\x4B\x2D\x55\x2D\x42\x45", $this->_m_magicUintBe, $this->_io, "/seq/19");
            }
            $this->_m_uint16be = $this->_io->readU2be();
            $this->_m_uint32be = $this->_io->readU4be();
            $this->_m_uint64be = $this->_io->readU8be();
            $this->_m_magicSintBe = $this->_io->readBytes(9);
            if (!($this->_m_magicSintBe == "\x50\x41\x43\x4B\x2D\x53\x2D\x42\x45")) {
                throw new \Kaitai\Struct\Error\ValidationNotEqualError("\x50\x41\x43\x4B\x2D\x53\x2D\x42\x45", $this->_m_magicSintBe, $this->_io, "/seq/23");
            }
            $this->_m_sint16be = $this->_io->readS2be();
            $this->_m_sint32be = $this->_io->readS4be();
            $this->_m_sint64be = $this->_io->readS8be();
        }
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
        protected $_m_magicUintLe;
        protected $_m_uint16le;
        protected $_m_uint32le;
        protected $_m_uint64le;
        protected $_m_magicSintLe;
        protected $_m_sint16le;
        protected $_m_sint32le;
        protected $_m_sint64le;
        protected $_m_magicUintBe;
        protected $_m_uint16be;
        protected $_m_uint32be;
        protected $_m_uint64be;
        protected $_m_magicSintBe;
        protected $_m_sint16be;
        protected $_m_sint32be;
        protected $_m_sint64be;
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
        public function magicUintLe() { return $this->_m_magicUintLe; }
        public function uint16le() { return $this->_m_uint16le; }
        public function uint32le() { return $this->_m_uint32le; }
        public function uint64le() { return $this->_m_uint64le; }
        public function magicSintLe() { return $this->_m_magicSintLe; }
        public function sint16le() { return $this->_m_sint16le; }
        public function sint32le() { return $this->_m_sint32le; }
        public function sint64le() { return $this->_m_sint64le; }
        public function magicUintBe() { return $this->_m_magicUintBe; }
        public function uint16be() { return $this->_m_uint16be; }
        public function uint32be() { return $this->_m_uint32be; }
        public function uint64be() { return $this->_m_uint64be; }
        public function magicSintBe() { return $this->_m_magicSintBe; }
        public function sint16be() { return $this->_m_sint16be; }
        public function sint32be() { return $this->_m_sint32be; }
        public function sint64be() { return $this->_m_sint64be; }
    }
}
