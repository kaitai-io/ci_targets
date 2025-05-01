<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ParamsCallExtraParens extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ParamsCallExtraParens $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_buf1 = new \Kaitai\Struct\Tests\ParamsCallExtraParens\MyStr1(5, $this->_io, $this, $this->_root);
        }
        protected $_m_buf1;
        public function buf1() { return $this->_m_buf1; }
    }
}

namespace Kaitai\Struct\Tests\ParamsCallExtraParens {
    class MyStr1 extends \Kaitai\Struct\Struct {
        public function __construct(int $len, \Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\ParamsCallExtraParens $_parent = null, ?\Kaitai\Struct\Tests\ParamsCallExtraParens $_root = null) {
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
