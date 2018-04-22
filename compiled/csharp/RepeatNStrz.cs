// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class RepeatNStrz : KaitaiStruct
    {
        public static RepeatNStrz FromFile(string fileName)
        {
            return new RepeatNStrz(new KaitaiStream(fileName));
        }

        public RepeatNStrz(KaitaiStream p__io, KaitaiStruct p__parent = null, RepeatNStrz p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _qty = m_io.ReadU4le();
            _lines = new List<string>((int) (Qty));
            for (var i = 0; i < Qty; i++)
            {
                _lines.Add(System.Text.Encoding.GetEncoding("UTF-8").GetString(m_io.ReadBytesTerm(0, false, true, true)));
            }
        }
        private uint _qty;
        private List<string> _lines;
        private RepeatNStrz m_root;
        private KaitaiStruct m_parent;
        public uint Qty { get { return _qty; } }
        public List<string> Lines { get { return _lines; } }
        public RepeatNStrz M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
