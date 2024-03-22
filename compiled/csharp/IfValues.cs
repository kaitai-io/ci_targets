// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class IfValues : KaitaiStruct
    {
        public static IfValues FromFile(string fileName)
        {
            return new IfValues(new KaitaiStream(fileName));
        }

        public IfValues(KaitaiStream p__io, KaitaiStruct p__parent = null, IfValues p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _codes = new List<Code>();
            for (var i = 0; i < 3; i++)
            {
                _codes.Add(new Code(m_io, this, m_root));
            }
        }
        public partial class Code : KaitaiStruct
        {
            public static Code FromFile(string fileName)
            {
                return new Code(new KaitaiStream(fileName));
            }

            public Code(KaitaiStream p__io, IfValues p__parent = null, IfValues p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                f_halfOpcode = false;
                _read();
            }
            private void _read()
            {
                _opcode = m_io.ReadU1();
            }
            private bool f_halfOpcode;
            private int? _halfOpcode;
            public int? HalfOpcode
            {
                get
                {
                    if (f_halfOpcode)
                        return _halfOpcode;
                    if (KaitaiStream.Mod(Opcode, 2) == 0) {
                        _halfOpcode = (int) (Opcode / 2);
                    }
                    f_halfOpcode = true;
                    return _halfOpcode;
                }
            }
            private byte _opcode;
            private IfValues m_root;
            private IfValues m_parent;
            public byte Opcode { get { return _opcode; } }
            public IfValues M_Root { get { return m_root; } }
            public IfValues M_Parent { get { return m_parent; } }
        }
        private List<Code> _codes;
        private IfValues m_root;
        private KaitaiStruct m_parent;
        public List<Code> Codes { get { return _codes; } }
        public IfValues M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
