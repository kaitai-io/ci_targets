<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class StrEncodingsEscapingToS extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\StrEncodingsEscapingToS $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_lenOf1 = $this->_io->readU2le();
            $this->_m_str1Raw = $this->_io->readBytes($this->lenOf1());
            $this->_m_lenOf2 = $this->_io->readU2le();
            $this->_m_str2Raw = $this->_io->readBytes($this->lenOf2());
            $this->_m_lenOf3 = $this->_io->readU2le();
            $this->_m_str3Raw = $this->_io->readBytes($this->lenOf3());
            $this->_m_lenOf4 = $this->_io->readU2le();
            $this->_m_str4Raw = $this->_io->readBytes($this->lenOf4());
        }
        protected $_m_str1;
        public function str1() {
            if ($this->_m_str1 !== null)
                return $this->_m_str1;
            $this->_m_str1 = \Kaitai\Struct\Stream::bytesToStr($this->str1Raw(), "ASCII\\\\x");
            return $this->_m_str1;
        }
        protected $_m_str2;
        public function str2() {
            if ($this->_m_str2 !== null)
                return $this->_m_str2;
            $this->_m_str2 = \Kaitai\Struct\Stream::bytesToStr($this->str2Raw(), "UTF-8\\'x");
            return $this->_m_str2;
        }
        protected $_m_str3;
        public function str3() {
            if ($this->_m_str3 !== null)
                return $this->_m_str3;
            $this->_m_str3 = \Kaitai\Struct\Stream::bytesToStr($this->str3Raw(), "SJIS\\\"x");
            return $this->_m_str3;
        }
        protected $_m_str4;
        public function str4() {
            if ($this->_m_str4 !== null)
                return $this->_m_str4;
            $this->_m_str4 = \Kaitai\Struct\Stream::bytesToStr($this->str4Raw(), "IBM437\\nx");
            return $this->_m_str4;
        }
        protected $_m_lenOf1;
        protected $_m_str1Raw;
        protected $_m_lenOf2;
        protected $_m_str2Raw;
        protected $_m_lenOf3;
        protected $_m_str3Raw;
        protected $_m_lenOf4;
        protected $_m_str4Raw;
        public function lenOf1() { return $this->_m_lenOf1; }
        public function str1Raw() { return $this->_m_str1Raw; }
        public function lenOf2() { return $this->_m_lenOf2; }
        public function str2Raw() { return $this->_m_str2Raw; }
        public function lenOf3() { return $this->_m_lenOf3; }
        public function str3Raw() { return $this->_m_str3Raw; }
        public function lenOf4() { return $this->_m_lenOf4; }
        public function str4Raw() { return $this->_m_str4Raw; }
    }
}
