<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ImportsAbs extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ImportsAbs $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_len = new \Kaitai\Struct\Tests\VlqBase128Le($this->_io);
            $this->_m_body = $this->_io->readBytes($this->len()->value());
        }
        public function len() { return $this->_m_len; }
        public function body() { return $this->_m_body; }
        protected $_m_len;
        protected $_m_body;
    }
}
