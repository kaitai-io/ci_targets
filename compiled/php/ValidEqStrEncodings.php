<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ValidEqStrEncodings extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\ValidEqStrEncodings $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_lenOf1 = $this->_io->readU2le();
            $this->_m_str1 = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes($this->lenOf1()), "ASCII");
            if (!($this->str1() == "Some ASCII")) {
                throw new \Kaitai\Struct\Error\ValidationNotEqualError("Some ASCII", $this->str1(), $this->_io(), "/seq/1");
            }
            $this->_m_lenOf2 = $this->_io->readU2le();
            $this->_m_str2 = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes($this->lenOf2()), "UTF-8");
            if (!($this->str2() == "\u{3053}\u{3093}\u{306b}\u{3061}\u{306f}")) {
                throw new \Kaitai\Struct\Error\ValidationNotEqualError("\u{3053}\u{3093}\u{306b}\u{3061}\u{306f}", $this->str2(), $this->_io(), "/seq/3");
            }
            $this->_m_lenOf3 = $this->_io->readU2le();
            $this->_m_str3 = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes($this->lenOf3()), "SJIS");
            if (!($this->str3() == "\u{3053}\u{3093}\u{306b}\u{3061}\u{306f}")) {
                throw new \Kaitai\Struct\Error\ValidationNotEqualError("\u{3053}\u{3093}\u{306b}\u{3061}\u{306f}", $this->str3(), $this->_io(), "/seq/5");
            }
            $this->_m_lenOf4 = $this->_io->readU2le();
            $this->_m_str4 = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes($this->lenOf4()), "IBM437");
            if (!($this->str4() == "\u{2591}\u{2592}\u{2593}")) {
                throw new \Kaitai\Struct\Error\ValidationNotEqualError("\u{2591}\u{2592}\u{2593}", $this->str4(), $this->_io(), "/seq/7");
            }
        }
        protected $_m_lenOf1;
        protected $_m_str1;
        protected $_m_lenOf2;
        protected $_m_str2;
        protected $_m_lenOf3;
        protected $_m_str3;
        protected $_m_lenOf4;
        protected $_m_str4;
        public function lenOf1() { return $this->_m_lenOf1; }
        public function str1() { return $this->_m_str1; }
        public function lenOf2() { return $this->_m_lenOf2; }
        public function str2() { return $this->_m_str2; }
        public function lenOf3() { return $this->_m_lenOf3; }
        public function str3() { return $this->_m_str3; }
        public function lenOf4() { return $this->_m_lenOf4; }
        public function str4() { return $this->_m_str4; }
    }
}
