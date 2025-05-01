<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class IndexSizes extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\IndexSizes $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_qty = $this->_io->readU4le();
            $this->_m_sizes = [];
            $n = $this->qty();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_sizes[] = $this->_io->readU4le();
            }
            $this->_m_bufs = [];
            $n = $this->qty();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_bufs[] = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes($this->sizes()[$i]), "ASCII");
            }
        }
        protected $_m_qty;
        protected $_m_sizes;
        protected $_m_bufs;
        public function qty() { return $this->_m_qty; }
        public function sizes() { return $this->_m_sizes; }
        public function bufs() { return $this->_m_bufs; }
    }
}
