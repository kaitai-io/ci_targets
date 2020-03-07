<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ProcessRepeatBytes extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\ProcessRepeatBytes $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m__raw_bufs = [];
            $this->_m_bufs = [];
            $n = 2;
            for ($i = 0; $i < $n; $i++) {
                $this->_m__raw_bufs[] = $this->_io->readBytes(5);
                $this->_m_bufs[] = \Kaitai\Struct\Stream::processXorOne(end($this->_m__raw_bufs), 158);
            }
        }
        protected $_m_bufs;
        protected $_m__raw_bufs;
        public function bufs() { return $this->_m_bufs; }
        public function _raw_bufs() { return $this->_m__raw_bufs; }
    }
}
