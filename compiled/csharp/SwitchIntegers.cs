// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class SwitchIntegers : KaitaiStruct
    {
        public static SwitchIntegers FromFile(string fileName)
        {
            return new SwitchIntegers(new KaitaiStream(fileName));
        }

        public SwitchIntegers(KaitaiStream p__io, KaitaiStruct p__parent = null, SwitchIntegers p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _opcodes = new List<Opcode>();
            {
                var i = 0;
                while (!m_io.IsEof) {
                    _opcodes.Add(new Opcode(m_io, this, m_root));
                    i++;
                }
            }
        }
        public partial class Opcode : KaitaiStruct
        {
            public static Opcode FromFile(string fileName)
            {
                return new Opcode(new KaitaiStream(fileName));
            }

            public Opcode(KaitaiStream p__io, SwitchIntegers p__parent = null, SwitchIntegers p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _code = m_io.ReadU1();
                switch (Code) {
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
            public byte Code { get { return _code; } }
            public ulong Body { get { return _body; } }
            public SwitchIntegers M_Root { get { return m_root; } }
            public SwitchIntegers M_Parent { get { return m_parent; } }
            private byte _code;
            private ulong _body;
            private SwitchIntegers m_root;
            private SwitchIntegers m_parent;
        }
        public List<Opcode> Opcodes { get { return _opcodes; } }
        public SwitchIntegers M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private List<Opcode> _opcodes;
        private SwitchIntegers m_root;
        private KaitaiStruct m_parent;
    }
}
