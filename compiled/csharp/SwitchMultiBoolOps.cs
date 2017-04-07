// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System;
using System.Collections.Generic;
using System.Linq;

namespace Kaitai
{
    public partial class SwitchMultiBoolOps : KaitaiStruct
    {
        public static SwitchMultiBoolOps FromFile(string fileName)
        {
            return new SwitchMultiBoolOps(new KaitaiStream(fileName));
        }

        public SwitchMultiBoolOps(KaitaiStream io, KaitaiStruct parent = null, SwitchMultiBoolOps root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _parse();
        }

        private void _parse()
        {
            _opcodes = new List<Opcode>();
            while (!m_io.IsEof) {
                _opcodes.Add(new Opcode(m_io, this, m_root));
            }
        }
        public partial class Opcode : KaitaiStruct
        {
            public static Opcode FromFile(string fileName)
            {
                return new Opcode(new KaitaiStream(fileName));
            }

            public Opcode(KaitaiStream io, SwitchMultiBoolOps parent = null, SwitchMultiBoolOps root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                _parse();
            }

            private void _parse()
            {
                _code = m_io.ReadU1();
                switch (( ((Code > 0) && (Code <= 8) && ((Code != 10 ? true : false)))  ? Code : 0)) {
                case 1: {
                    _body = m_io.ReadU1();
                    break;
                }
                case 2: {
                    _body = m_io.ReadU2le();
                    break;
                }
                case 4: {
                    _body = m_io.ReadU4le();
                    break;
                }
                case 8: {
                    _body = m_io.ReadU8le();
                    break;
                }
                }
            }
            private byte _code;
            private ulong _body;
            private SwitchMultiBoolOps m_root;
            private SwitchMultiBoolOps m_parent;
            public byte Code { get { return _code; } }
            public ulong Body { get { return _body; } }
            public SwitchMultiBoolOps M_Root { get { return m_root; } }
            public SwitchMultiBoolOps M_Parent { get { return m_parent; } }
        }
        private List<Opcode> _opcodes;
        private SwitchMultiBoolOps m_root;
        private KaitaiStruct m_parent;
        public List<Opcode> Opcodes { get { return _opcodes; } }
        public SwitchMultiBoolOps M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
