<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class InstanceStd extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\InstanceStd $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
        }
        protected $_m_header;
        public function header() {
            if ($this->_m_header !== null)
                return $this->_m_header;
            $_pos = $this->_io->pos();
            $this->_io->seek(2);
            $this->_m_header = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes(5), "ASCII");
            $this->_io->seek($_pos);
            return $this->_m_header;
        }
    }
}
