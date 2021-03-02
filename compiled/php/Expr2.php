<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class Expr2 extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\Expr2 $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_str1 = new \Kaitai\Struct\Tests\Expr2\ModStr($this->_io, $this, $this->_root);
            $this->_m_str2 = new \Kaitai\Struct\Tests\Expr2\ModStr($this->_io, $this, $this->_root);
        }
        protected $_m_str1LenMod;
        public function str1LenMod() {
            if ($this->_m_str1LenMod !== null)
                return $this->_m_str1LenMod;
            $this->_m_str1LenMod = $this->str1()->lenMod();
            return $this->_m_str1LenMod;
        }
        protected $_m_str1Len;
        public function str1Len() {
            if ($this->_m_str1Len !== null)
                return $this->_m_str1Len;
            $this->_m_str1Len = strlen($this->str1()->str());
            return $this->_m_str1Len;
        }
        protected $_m_str1Tuple5;
        public function str1Tuple5() {
            if ($this->_m_str1Tuple5 !== null)
                return $this->_m_str1Tuple5;
            $this->_m_str1Tuple5 = $this->str1()->tuple5();
            return $this->_m_str1Tuple5;
        }
        protected $_m_str2Tuple5;
        public function str2Tuple5() {
            if ($this->_m_str2Tuple5 !== null)
                return $this->_m_str2Tuple5;
            $this->_m_str2Tuple5 = $this->str2()->tuple5();
            return $this->_m_str2Tuple5;
        }
        protected $_m_str1Avg;
        public function str1Avg() {
            if ($this->_m_str1Avg !== null)
                return $this->_m_str1Avg;
            $this->_m_str1Avg = $this->str1()->rest()->avg();
            return $this->_m_str1Avg;
        }
        protected $_m_str1Byte1;
        public function str1Byte1() {
            if ($this->_m_str1Byte1 !== null)
                return $this->_m_str1Byte1;
            $this->_m_str1Byte1 = $this->str1()->rest()->byte1();
            return $this->_m_str1Byte1;
        }
        protected $_m_str1Char5;
        public function str1Char5() {
            if ($this->_m_str1Char5 !== null)
                return $this->_m_str1Char5;
            $this->_m_str1Char5 = $this->str1()->char5();
            return $this->_m_str1Char5;
        }
        protected $_m_str1;
        protected $_m_str2;
        public function str1() { return $this->_m_str1; }
        public function str2() { return $this->_m_str2; }
    }
}

namespace Kaitai\Struct\Tests\Expr2 {
    class ModStr extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\Expr2 $_parent = null, \Kaitai\Struct\Tests\Expr2 $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_lenOrig = $this->_io->readU2le();
            $this->_m_str = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes($this->lenMod()), "UTF-8");
            $this->_m__raw_rest = $this->_io->readBytes(3);
            $_io__raw_rest = new \Kaitai\Struct\Stream($this->_m__raw_rest);
            $this->_m_rest = new \Kaitai\Struct\Tests\Expr2\Tuple($_io__raw_rest, $this, $this->_root);
        }
        protected $_m_lenMod;
        public function lenMod() {
            if ($this->_m_lenMod !== null)
                return $this->_m_lenMod;
            $this->_m_lenMod = ($this->lenOrig() - 3);
            return $this->_m_lenMod;
        }
        protected $_m_char5;
        public function char5() {
            if ($this->_m_char5 !== null)
                return $this->_m_char5;
            $_pos = $this->_io->pos();
            $this->_io->seek(5);
            $this->_m_char5 = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes(1), "ASCII");
            $this->_io->seek($_pos);
            return $this->_m_char5;
        }
        protected $_m_tuple5;
        public function tuple5() {
            if ($this->_m_tuple5 !== null)
                return $this->_m_tuple5;
            $_pos = $this->_io->pos();
            $this->_io->seek(5);
            $this->_m_tuple5 = new \Kaitai\Struct\Tests\Expr2\Tuple($this->_io, $this, $this->_root);
            $this->_io->seek($_pos);
            return $this->_m_tuple5;
        }
        protected $_m_lenOrig;
        protected $_m_str;
        protected $_m_rest;
        protected $_m__raw_rest;
        public function lenOrig() { return $this->_m_lenOrig; }
        public function str() { return $this->_m_str; }
        public function rest() { return $this->_m_rest; }
        public function _raw_rest() { return $this->_m__raw_rest; }
    }
}

namespace Kaitai\Struct\Tests\Expr2 {
    class Tuple extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\Expr2\ModStr $_parent = null, \Kaitai\Struct\Tests\Expr2 $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_byte0 = $this->_io->readU1();
            $this->_m_byte1 = $this->_io->readU1();
            $this->_m_byte2 = $this->_io->readU1();
        }
        protected $_m_avg;
        public function avg() {
            if ($this->_m_avg !== null)
                return $this->_m_avg;
            $this->_m_avg = intval(($this->byte1() + $this->byte2()) / 2);
            return $this->_m_avg;
        }
        protected $_m_byte0;
        protected $_m_byte1;
        protected $_m_byte2;
        public function byte0() { return $this->_m_byte0; }
        public function byte1() { return $this->_m_byte1; }
        public function byte2() { return $this->_m_byte2; }
    }
}
