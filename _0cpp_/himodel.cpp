#include "himodel.h"

HiModel::HiModel(QObject *parent)
    : QAbstractItemModel(parent)
{
}

QVariant HiModel::headerData(int section, Qt::Orientation orientation, int role) const
{
    // FIXME: Implement me!
}

QModelIndex HiModel::index(int row, int column, const QModelIndex &parent) const
{
    // FIXME: Implement me!
}

QModelIndex HiModel::parent(const QModelIndex &index) const
{
    // FIXME: Implement me!
}

int HiModel::rowCount(const QModelIndex &parent) const
{
    if (!parent.isValid())
        return 0;

    // FIXME: Implement me!
}

int HiModel::columnCount(const QModelIndex &parent) const
{
    if (!parent.isValid())
        return 0;

    // FIXME: Implement me!
}

bool HiModel::hasChildren(const QModelIndex &parent) const
{
    // FIXME: Implement me!
}

bool HiModel::canFetchMore(const QModelIndex &parent) const
{
    // FIXME: Implement me!
    return false;
}

void HiModel::fetchMore(const QModelIndex &parent)
{
    // FIXME: Implement me!
}

QVariant HiModel::data(const QModelIndex &index, int role) const
{
    if (!index.isValid())
        return QVariant();

    // FIXME: Implement me!
    return QVariant();
}
