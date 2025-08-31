<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ProcessRepeatUsertypeDynargXor extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ProcessRepeatUsertypeDynargXor $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m__raw_blocks = [];
            $this->_m__raw__raw_blocks = [];
            $this->_m_blocks = [];
            $n = 2;
            for ($i = 0; $i < $n; $i++) {
                $this->_m__raw__raw_blocks[] = $this->_io->readBytes(5);
                $this->_m__raw_blocks[] = \Kaitai\Struct\Stream::processXorOne(end($this->_m__raw__raw_blocks), 155 ^ ($i << 4 | $this->_io()->pos()));
                $_io__raw_blocks = new \Kaitai\Struct\Stream(end($this->_m__raw_blocks));
                $this->_m_blocks[] = new \Kaitai\Struct\Tests\ProcessRepeatUsertypeDynargXor\Block($_io__raw_blocks, $this, $this->_root);
            }
            $this->_m_blocksB = new \Kaitai\Struct\Tests\ProcessRepeatUsertypeDynargXor\BlocksBWrapper($this->_io, $this, $this->_root);
        }
        protected $_m_blocks;
        protected $_m_blocksB;
        protected $_m__raw_blocks;
        protected $_m__raw__raw_blocks;
        public function blocks() { return $this->_m_blocks; }
        public function blocksB() { return $this->_m_blocksB; }
        public function _raw_blocks() { return $this->_m__raw_blocks; }
        public function _raw__raw_blocks() { return $this->_m__raw__raw_blocks; }
    }
}

namespace Kaitai\Struct\Tests\ProcessRepeatUsertypeDynargXor {
    class Block extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\ProcessRepeatUsertypeDynargXor $_parent = null, ?\Kaitai\Struct\Tests\ProcessRepeatUsertypeDynargXor $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_a = $this->_io->readU4le();
        }
        protected $_m_a;
        public function a() { return $this->_m_a; }
    }
}

namespace Kaitai\Struct\Tests\ProcessRepeatUsertypeDynargXor {
    class BlocksBWrapper extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\ProcessRepeatUsertypeDynargXor $_parent = null, ?\Kaitai\Struct\Tests\ProcessRepeatUsertypeDynargXor $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_dummy = $this->_io->readU1();
        }
        protected $_m_blocks0B;
        public function blocks0B() {
            if ($this->_m_blocks0B !== null)
                return $this->_m_blocks0B;
            $io = $this->_parent()->blocks()[0]->_io();
            $_pos = $io->pos();
            $io->seek(4);
            $this->_m_blocks0B = $io->readU1();
            $io->seek($_pos);
            return $this->_m_blocks0B;
        }
        protected $_m_blocks1B;
        public function blocks1B() {
            if ($this->_m_blocks1B !== null)
                return $this->_m_blocks1B;
            $io = $this->_parent()->blocks()[1]->_io();
            $_pos = $io->pos();
            $io->seek(4);
            $this->_m_blocks1B = $io->readU1();
            $io->seek($_pos);
            return $this->_m_blocks1B;
        }
        protected $_m_dummy;
        public function dummy() { return $this->_m_dummy; }
    }
}
