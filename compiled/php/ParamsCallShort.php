<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ParamsCallShort extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\ParamsCallShort $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_buf1 = new \Kaitai\Struct\Tests\ParamsCallShort\MyStr1(5, $this->_io, $this, $this->_root);
            $this->_m_buf2 = new \Kaitai\Struct\Tests\ParamsCallShort\MyStr2(2 + 3, true, $this->_io, $this, $this->_root);
        }
        protected $_m_buf1;
        protected $_m_buf2;
        public function buf1() { return $this->_m_buf1; }
        public function buf2() { return $this->_m_buf2; }
    }
}

namespace Kaitai\Struct\Tests\ParamsCallShort {
    class MyStr1 extends \Kaitai\Struct\Struct {
        public function __construct(int $len, \Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\ParamsCallShort $_parent = null, \Kaitai\Struct\Tests\ParamsCallShort $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_m_len = $len;
            $this->_read();
        }

        private function _read() {
            $this->_m_body = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes($this->len()), "UTF-8");
        }
        protected $_m_body;
        protected $_m_len;
        public function body() { return $this->_m_body; }
        public function len() { return $this->_m_len; }
    }
}

namespace Kaitai\Struct\Tests\ParamsCallShort {
    class MyStr2 extends \Kaitai\Struct\Struct {
        public function __construct(int $len, bool $hasTrailer, \Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\ParamsCallShort $_parent = null, \Kaitai\Struct\Tests\ParamsCallShort $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_m_len = $len;
            $this->_m_hasTrailer = $hasTrailer;
            $this->_read();
        }

        private function _read() {
            $this->_m_body = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes($this->len()), "UTF-8");
            if ($this->hasTrailer()) {
                $this->_m_trailer = $this->_io->readU1();
            }
        }
        protected $_m_body;
        protected $_m_trailer;
        protected $_m_len;
        protected $_m_hasTrailer;
        public function body() { return $this->_m_body; }
        public function trailer() { return $this->_m_trailer; }
        public function len() { return $this->_m_len; }
        public function hasTrailer() { return $this->_m_hasTrailer; }
    }
}
