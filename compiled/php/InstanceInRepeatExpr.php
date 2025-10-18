<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class InstanceInRepeatExpr extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\InstanceInRepeatExpr $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_chunks = [];
            $n = $this->numChunks();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_chunks[] = new \Kaitai\Struct\Tests\InstanceInRepeatExpr\Chunk($this->_io, $this, $this->_root);
            }
        }
        public function numChunks() {
            if ($this->_m_numChunks !== null)
                return $this->_m_numChunks;
            $_pos = $this->_io->pos();
            $this->_io->seek($this->_io()->pos() + 16);
            $this->_m_numChunks = $this->_io->readU4le();
            $this->_io->seek($_pos);
            return $this->_m_numChunks;
        }
        public function chunks() { return $this->_m_chunks; }
        protected $_m_numChunks;
        protected $_m_chunks;
    }
}

namespace Kaitai\Struct\Tests\InstanceInRepeatExpr {
    class Chunk extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\InstanceInRepeatExpr $_parent = null, ?\Kaitai\Struct\Tests\InstanceInRepeatExpr $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_offset = $this->_io->readU4le();
            $this->_m_len = $this->_io->readU4le();
        }
        public function offset() { return $this->_m_offset; }
        public function len() { return $this->_m_len; }
        protected $_m_offset;
        protected $_m_len;
    }
}
