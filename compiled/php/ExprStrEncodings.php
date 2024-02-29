<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ExprStrEncodings extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\ExprStrEncodings $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_lenOf1 = $this->_io->readU2le();
            $this->_m_str1 = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes($this->lenOf1()), "ASCII");
            $this->_m_lenOf2 = $this->_io->readU2le();
            $this->_m_str2 = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes($this->lenOf2()), "UTF-8");
            $this->_m_lenOf3 = $this->_io->readU2le();
            $this->_m_str3 = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes($this->lenOf3()), "SJIS");
            $this->_m_lenOf4 = $this->_io->readU2le();
            $this->_m_str4 = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes($this->lenOf4()), "IBM437");
        }
        protected $_m_str1Eq;
        public function str1Eq() {
            if ($this->_m_str1Eq !== null)
                return $this->_m_str1Eq;
            $this->_m_str1Eq = $this->str1() == "Some ASCII";
            return $this->_m_str1Eq;
        }
        protected $_m_str2Eq;
        public function str2Eq() {
            if ($this->_m_str2Eq !== null)
                return $this->_m_str2Eq;
            $this->_m_str2Eq = $this->str2() == "\u{3053}\u{3093}\u{306b}\u{3061}\u{306f}";
            return $this->_m_str2Eq;
        }
        protected $_m_str3Eq;
        public function str3Eq() {
            if ($this->_m_str3Eq !== null)
                return $this->_m_str3Eq;
            $this->_m_str3Eq = $this->str3() == "\u{3053}\u{3093}\u{306b}\u{3061}\u{306f}";
            return $this->_m_str3Eq;
        }
        protected $_m_str3EqStr2;
        public function str3EqStr2() {
            if ($this->_m_str3EqStr2 !== null)
                return $this->_m_str3EqStr2;
            $this->_m_str3EqStr2 = $this->str3() == $this->str2();
            return $this->_m_str3EqStr2;
        }
        protected $_m_str4Eq;
        public function str4Eq() {
            if ($this->_m_str4Eq !== null)
                return $this->_m_str4Eq;
            $this->_m_str4Eq = $this->str4() == "\u{2591}\u{2592}\u{2593}";
            return $this->_m_str4Eq;
        }
        protected $_m_str4GtStrCalc;
        public function str4GtStrCalc() {
            if ($this->_m_str4GtStrCalc !== null)
                return $this->_m_str4GtStrCalc;
            $this->_m_str4GtStrCalc = $this->str4() > "\u{2524}";
            return $this->_m_str4GtStrCalc;
        }
        protected $_m_str4GtStrFromBytes;
        public function str4GtStrFromBytes() {
            if ($this->_m_str4GtStrFromBytes !== null)
                return $this->_m_str4GtStrFromBytes;
            $this->_m_str4GtStrFromBytes = $this->str4() > \Kaitai\Struct\Stream::bytesToStr("\xB4", "IBM437");
            return $this->_m_str4GtStrFromBytes;
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
