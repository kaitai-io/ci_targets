<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class IndexToParamUntil extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\IndexToParamUntil $_root = null) {
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
            $this->_m_blocks = [];
            $i = 0;
            do {
                $_ = new \Kaitai\Struct\Tests\IndexToParamUntil\Block($i, $this->_io, $this, $this->_root);
                $this->_m_blocks[] = $_;
                $i++;
            } while (!($this->_io()->isEof()));
        }
        protected $_m_qty;
        protected $_m_sizes;
        protected $_m_blocks;
        public function qty() { return $this->_m_qty; }
        public function sizes() { return $this->_m_sizes; }
        public function blocks() { return $this->_m_blocks; }
    }
}

namespace Kaitai\Struct\Tests\IndexToParamUntil {
    class Block extends \Kaitai\Struct\Struct {
        public function __construct(int $idx, \Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\IndexToParamUntil $_parent = null, ?\Kaitai\Struct\Tests\IndexToParamUntil $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_m_idx = $idx;
            $this->_read();
        }

        private function _read() {
            $this->_m_buf = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes($this->_root()->sizes()[$this->idx()]), "ASCII");
        }
        protected $_m_buf;
        protected $_m_idx;
        public function buf() { return $this->_m_buf; }
        public function idx() { return $this->_m_idx; }
    }
}
